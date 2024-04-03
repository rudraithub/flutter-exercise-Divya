void main() {
  var obj = B();
  obj.display();
  obj.display1();
  obj.display2();
}

class A {
  void display() {
    print("class a first method");
  }

  void display1() {
    print("class a secound method");
  }
}

class C {
  void display2() {
    print("class c first method");
  }
}

class B implements A, C {
  void display() {
    print(" after impliment class a first method");
  }

  void display1() {
    print(" after impliment class a secound method");
  }

  void display2() {
    print(" after impliment class c first method");
  }
}
