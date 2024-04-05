import 'package:flutter/material.dart';

class MyStack1 extends StatelessWidget {
  const MyStack1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            alignment: Alignment
                .center, // Aligns the children of the Stack at the center
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.blue[900],
              ),
              Container(
                height: 250,
                width: 250,
                color: Colors.blue[800],
                
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue[700],
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.blue[600],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue[400],
                child:Icon(Icons.lock),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
