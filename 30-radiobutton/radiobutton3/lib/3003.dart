import 'package:flutter/material.dart';

class MyRadioButton3 extends StatefulWidget {
  const MyRadioButton3({Key? key}) : super(key: key);

  @override
  State<MyRadioButton3> createState() =>
      _MyRadioButton3State(); // Corrected state class name
}

class _MyRadioButton3State extends State<MyRadioButton3> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Radio Button Demo',
          style: TextStyle(color: Colors.amberAccent),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        // Wrap rows in a Column
        children: [
          Container(
            margin: EdgeInsets.only(right: 30),
          ), // Remove extra closing parenthesis
          SizedBox(height: 50),
          Row(
            children: [
              Icon(Icons.menu_open_outlined),
              Text(
                'Please Select Your Language',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                activeColor: Colors.purple,
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Flutter'),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                activeColor: Colors.purple,
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Node JS'),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                activeColor: Colors.purple,
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('React'),
            ],
          ),
        ],
      ),
    );
  }
}
