
import 'package:flutter/material.dart';
import 'package:sliver_grid/sliver_grid_4801.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGridView(),
    );
  }
}
