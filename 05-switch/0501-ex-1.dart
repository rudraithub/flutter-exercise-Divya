void main() {
  int num = 23;

  switch (num.sign) {
    case 1:
      print("$num: is positive");
      break;
    case 2:
      print("$num: is nagative");
      break;
    case 3:
      print("$num: is zero");
      break;
  }
}
