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
  assert(k.rprev == nullptr);
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

  o.backwardPropogate();
  n.print();
  x1w1x2w2.print();

  o.display();

  auto nn = Layer(2, 3);

  std::vector<Value<double>> myVector = {Value<double>(4.0), Value<double>(4.0),
                                         Value<double>(1.0)};
  std::vector<int> myVector2 = {4, 4, 1};

  nn.call(myVector);

  std::vector<double> data = {2.0, 3.0, -1.0};
  auto mlp = MLP(3, myVector2);

  mlp.layers[0].call(data);
  mlp.layers[1].call(mlp.layers[0].out);
  cout << mlp.layers.size() << endl;
  mlp.layers[2].call(mlp.layers[1].out);
  mlp.call(data);
  return 0;
}
