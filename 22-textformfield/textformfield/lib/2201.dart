import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  const MyTextForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textformfield Demo'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
              labelStyle: TextStyle(fontSize: 20, color: Colors.pinkAccent),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
              prefix: Icon(Icons.person, color: Colors.orangeAccent),
            
            
            
            ),
          ),
        ],
      ),
    );
  }
}
