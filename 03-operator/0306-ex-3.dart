void main() {
  var x = 22;
  var y = 39;
  if (x < 15 && y > 15) {
    print("true");
  } else if (x < 15 || y > 15) {
    print("false");
  } else if (x != 15 || y >= 39) {
    print("t");
  } else {
    print("f");
  }
}
