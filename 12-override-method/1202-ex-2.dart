void main() {
  var obj = B();
  obj.diplay();
}

class A {
  void display() {
    print('tiger');
  }
}

class B extends A {
  void diplay() {
    super.display();
    print('lion');
  }
}
