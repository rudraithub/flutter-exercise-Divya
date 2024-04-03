import 'package:flutter/material.dart';

class MyText1 extends StatelessWidget {
  const MyText1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'my name is divya',
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.amberAccent,
            color: Colors.indigoAccent,
            fontSize: 30,
            backgroundColor: Colors.pinkAccent,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
