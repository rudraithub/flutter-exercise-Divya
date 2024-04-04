import 'package:flutter/material.dart';

class mytextfeild1 extends StatefulWidget {
  const mytextfeild1({super.key});

  @override
  State<mytextfeild1> createState() => _mytextfeildState();
}

class _mytextfeildState extends State<mytextfeild1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textfeild Demo',
        style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.pink,
        
      ),
      body: Column(
        children: [
           TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
            
              prefixIcon: Icon(Icons.person,color: Colors.red,)
            ),
          ),
        ],
      ),
      );
  }
}