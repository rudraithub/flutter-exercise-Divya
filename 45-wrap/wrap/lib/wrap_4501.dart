import 'package:flutter/material.dart';

class mywrap extends StatelessWidget {
  const mywrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Demo'),
        backgroundColor: Colors.orange,

      ),
      body: Column(
        children: [
          Text('Flutter as a technology is very flexible   Flutter has proven its reliability,     home screen         home screen      home screeen',
          style: TextStyle(fontSize: 37)),
        ],
      ),
    );
  }
}