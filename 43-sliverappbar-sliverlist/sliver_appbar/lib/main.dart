


import 'package:flutter/material.dart';
import 'package:sliver_appbar/4301.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySliverBar(),
    );
  }
}
