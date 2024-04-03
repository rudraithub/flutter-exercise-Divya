import 'package:flutter/material.dart';

class MyText2 extends StatelessWidget {
  const MyText2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'India',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.redAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                 // fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'Good Evening',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                ),
              ),
               Text(
                'Good Night',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.redAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
               Text(
                'Greetings,Planet!',
                style: TextStyle(
                  fontSize: 20,
                  decorationColor: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                decorationStyle: TextDecorationStyle.wavy,
                //decorationStylecolor:Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}