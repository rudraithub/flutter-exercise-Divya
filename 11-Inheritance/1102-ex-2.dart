void main() {
  var obj = B();
  obj.display_b();
  obj.display_a();
}

class A {
  String a = "riya";
  void display_a() {
    print(a);
  }
}

class B extends A {
  String b = "jiya";
  void display_b() {
    print(b);
  }
}
