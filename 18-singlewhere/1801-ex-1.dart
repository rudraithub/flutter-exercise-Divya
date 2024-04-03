void main() async {
  List<int> num = [1, 2, 3, 4, 5, 6, 7];
  int res = num.singleWhere((element) => element > 6);
  print(res);
}
