import 'package:flutter/material.dart';

class MyField1 extends StatefulWidget {
  const MyField1({Key? key}) : super(key: key);

  @override
  State<MyField1> createState() => _MyFieldState();
}

class _MyFieldState extends State<MyField1> {
  final txtName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField  Second Demo'),
        titleTextStyle: TextStyle(color: Colors.blueAccent,fontSize: 20), // Corrected line
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.person,color: Colors.redAccent,),
              SizedBox(width: 10), // Added SizedBox for spacing
              Expanded( // Added Expanded to TextField
                child: TextField(
                  controller: txtName,
                  decoration: InputDecoration(hintText: "Enter your UserName"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
