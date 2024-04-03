
import 'package:flutter/material.dart';
import 'package:radiobutton2/3002.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyRadioButton1(),
    );
  }
}
