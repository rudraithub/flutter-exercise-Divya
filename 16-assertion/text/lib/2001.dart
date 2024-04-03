import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'hello world',
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
