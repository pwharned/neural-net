#include "../include/grad.hpp"
#include "../include/neuron.hpp"
#include "assert.h"
#include "cmath"
using namespace std;
int main() {
  Value<double> a = 1;

  std::cout << "test that the wrapped value is correct" << std::endl;
  assert(a.get() == 1);

  auto b = a + a;

  assert(b.get() == 2);

  auto c = a * a;

  assert(c.get() == 1);

  auto d = a * b + c;

  assert(d.get() == 3);

  auto e = d + 1;

  assert(e.get() == 4);

  auto g = e - 1;

  assert(g.get() == 3);

  auto f = g ^ g;

  std::cout << f.get() << std::endl;

  assert(f.get() == 27);

  auto h = f - 9;

  assert(h.get() == 18);
  assert(h.op() == '-');

  auto i = h / 2;

  assert(i.get() == 9);

  auto j = i * -1;

  assert(j.get() == -9);

  assert(relu(j).get() == 0);

  // j.backwardPropogate();

  cout << j.grad() << endl;
  cout << a.grad() << endl;

  Value<double> k = 1;
  Value<double> l = 3;
  auto m = k * l;

  // k.backwardPropogate();
  // l.backwardPropogate();

  cout << m.grad() << endl;

  Value<double> x1 = 2;
  Value<double> x2 = 0.0;
  Value<double> w1 = -3;

  Value<double> w2 = 1;
  Value<double> b1 = 6.8813735870195432;

  auto x1w1 = x1 * w1;
  auto x2w2 = x2 * w2;
  auto x1w1x2w2 = x1w1 + x2w2;
  auto n = x1w1x2w2 + b1;
  auto o = tanh(n);

  cout << "testing left hand assignation" << endl;

  auto cc = Value<double>(1);
  auto dd = Value<double>(2);
  auto aa = Value<double>(3);
  cc += (dd);

  assert(&cc != cc.lprev);
  assert(&cc != cc.rprev);
  assert(cc.rprev != cc.lprev);
  assert(cc.lprev != nullptr);
  assert(cc.rprev != nullptr);
  assert(cc.lprev->lprev == nullptr);
  assert(cc.lprev->rprev == nullptr);
  assert(cc.rprev == &dd);
  auto gg = (dd * aa);
  cc += gg;
  cc += gg * 2;
  // cc.display();
  // cc.topologicalSort();
  cout << "completed" << endl;
  std::vector<Value<double>> myVector = {Value<double>(4.0), Value<double>(4.0),
                                         Value<double>(1.0)};
  std::vector<int> myVector2 = {4, 4, 1};
  std::vector<Value<double>> data = {Value<double>(2.0)};

  // auto nn = Layer(2, 3);

  auto neuron = Neuron(1);

  for (int i = 0; i < neuron.w.size(); i++) {
    neuron.out += (neuron.w[i] * data[i]);
  }
  neuron.out += neuron.b;
  neuron.out.display();

  cout << "called the neuron" << endl;
  // neuron.out.backwardPropogate();
  cout << "propogated through " << endl;

  auto neuron2 = Neuron(1);
  neuron2.call(data);
  neuron2.out.display();

  // auto mlp = MLP(3, myVector2);

  // mlp.layers[0].neurons[0].w[0].print();

  // auto out = mlp.call(data);
  // out[0].rprev->print();

  // mlp.layers[0].neurons[0].w[0].print();

  return 0;
}
