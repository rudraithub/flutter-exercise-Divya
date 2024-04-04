import 'package:flutter/material.dart';

class mytextfeild extends StatefulWidget {
  const mytextfeild({super.key});

  @override
  State<mytextfeild> createState() => _mytextfeildState();
}

class _mytextfeildState extends State<mytextfeild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('textfeild Demo',
        style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
        
      ),
      body: Column(
        children: [
           TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: "Enter Your Username",
              
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ],
      ),
      );
  }
}