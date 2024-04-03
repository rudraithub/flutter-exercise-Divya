import 'package:flutter/material.dart';

class Mytextform3 extends StatelessWidget {
  const Mytextform3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield flutter Demo'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
              labelStyle: TextStyle(color: Colors.green),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
              prefix: Icon(Icons.person, color: Colors.green[400]),
              suffixIcon: Icon(Icons.remove_red_eye),
              suffixIconColor: Colors.green,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
              labelStyle: TextStyle(fontSize: 20, color: Colors.green),
              prefixIcon: Icon(Icons.person, color: Colors.green),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
              labelStyle: TextStyle(fontSize: 20, color: Colors.green),
              prefixIcon: Icon(Icons.person, color: Colors.green),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
            ),
          ),
        ],
      ),
    );
  }
}
