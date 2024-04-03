void main() {
  var obj = B();
  obj.num_a();
  obj.num_b();
}

class A {
  var a = 999;
  void num_a() {
    print(a);
  }
}

class B extends A {
  var b = 898;
  void num_b() {
    print(b);
  }
}
