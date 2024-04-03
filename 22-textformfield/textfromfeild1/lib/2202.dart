import 'package:flutter/material.dart';

class Mytextform1 extends StatelessWidget {
  const Mytextform1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield flutter Demo' ),
        titleTextStyle:TextStyle(color: Colors.white,fontSize: 20),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
              labelStyle: TextStyle(fontSize: 20, color: Colors.orangeAccent),
              prefixIcon: Icon(Icons.person, color: Colors.deepPurpleAccent),
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            ),
          ), // Removed extra comma here
        ],
      ),
    );
  }
}
