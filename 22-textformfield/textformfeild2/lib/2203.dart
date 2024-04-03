import 'package:flutter/material.dart';

class Mytextform2 extends StatelessWidget {
  const Mytextform2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield flutter Demo'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.pink,
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
              labelStyle: TextStyle(color: Colors.pink),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink)),
              prefix: Icon(Icons.person, color: Colors.pink[400]),
              suffixIcon: Icon(Icons.remove_red_eye),
              suffixIconColor: Colors.pink,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
              labelStyle: TextStyle(fontSize: 20, color: Colors.pink),
              prefixIcon: Icon(Icons.person, color: Colors.pink),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
              labelStyle: TextStyle(fontSize: 20, color: Colors.pink),
              prefixIcon: Icon(Icons.person, color: Colors.pink),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink)),
            ),
          ),
        ],
      ),
    );
  }
}
