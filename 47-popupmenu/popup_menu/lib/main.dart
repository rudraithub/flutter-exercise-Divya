

import 'package:flutter/material.dart';

import 'package:popup_menu/popup_menu_4701.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mypopupmenu(),
    );
  }
}
