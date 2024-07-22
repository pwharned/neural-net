#include <stdlib.h>
#include <time.h>

#include <vector>

#include "../include/grad.hpp"

class Neuron {
 public:
  Neuron(int nin) : out(Value<double>(0.0)) {
    w = std::vector<Value<double>>(nin, 0);
    srand(time(NULL));
    zero_grad();
  }

  void zero_grad() {
    for (int i = 0; i < w.size(); i++) {
      double x = ((double)rand() / (RAND_MAX));
      w[i] = Value<double>(x);
    }
  }

  Value<double> call(std::vector<double> x) {
    // need to implement a check to assure dimensions are the same
    for (int i = 0; i < w.size(); i++) {
      out += (w[i] * x[i]);
    }
    out += b;
    return out;
  }
  Value<double> call(std::vector<Value<double>> x) {
    // need to implement a check to assure dimensions are the same
    for (int i = 0; i < w.size(); i++) {
      auto j = (w[i] * x[i]);
      out += j;
    }
    out += b;

    return out;
  }
  mutable Value<double> out;
  mutable vector<Value<double>> w;
  mutable Value<double> b = Value<double>(0.0);
};

class Layer {
 public:
  Layer(int nin, int nout) {
    neurons = std::vector<Neuron>(nout, 0);
    out = std::vector<Value<double>>(nout, Value<double>(0));

    for (int i = 0; i < nout; i++) {
      neurons[i] = Neuron(nin);
    }
  }

  void call(std::vector<double> x) {
    for (int i = 0; i < neurons.size(); i++) {
      out[i] = neurons[i].call(x);
    }
  };
  void call(std::vector<Value<double>> x) {
    for (int i = 0; i < neurons.size(); i++) {
      out[i] = neurons[i].call(x);
    }
  };

  std::vector<Neuron> neurons;

  mutable std::vector<Value<double>> out;
};

class MLP {
 public:
  std::vector<Layer> layers;

  MLP(int nin, std::vector<int> nouts) {
    layers.push_back(Layer(nin, nouts[0]));
    for (int i = 1; i < nouts.size(); i++) {
      layers.push_back(Layer(nouts[i], nouts[i + 1]));
    };
  }

  std::vector<Value<double>> call(std::vector<double> x) {
    layers[0].call(x);
    // call the first layer
    for (int i = 1; i < layers.size(); i++) {
      layers[i].call(layers[i - 1].out);
    }
    return layers[layers.size()].out;
  };
};
