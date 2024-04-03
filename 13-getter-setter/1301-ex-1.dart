void main() {
  var obj = A();
  obj.cusSet = 'ruhi';
  print(obj.cusSet);
}

class A {
  var name;
  void set cusSet(var name) {
    this.name = name;
  }

  String get cusSet {
    return name;
  }
}
