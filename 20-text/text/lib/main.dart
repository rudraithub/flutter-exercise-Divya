

import 'package:dart1/2001.dart';
import 'package:dart1/text1.dart';
import 'package:dart1/text2.dart';
import 'package:dart1/text3.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyText1 (),
    );
  }
}
