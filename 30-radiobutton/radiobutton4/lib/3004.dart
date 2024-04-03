import 'package:flutter/material.dart';

class MyRadioButton4 extends StatefulWidget {
  const MyRadioButton4({Key? key}) : super(key: key);

  @override
  State<MyRadioButton4> createState() =>
      _MyRadioButton3State(); // Corrected state class name
}

class _MyRadioButton3State extends State<MyRadioButton4> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Radio Button Demo',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.pink,
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
              Icon(Icons.menu),
              Text(
                'Please Select Your City',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                activeColor: Colors.red,
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
              Text('Bhavnagar'),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                activeColor: Colors.red,
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
              Text('Surat'),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                activeColor: Colors.red,
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
              Text('Rajkot'),
            ],
          ),
           Row(
            children: [
              Radio<int>(
                activeColor: Colors.red,
                value: 4,
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
              Text('Bhavnagar'),
            ],
          ),
        ],
      ),
    );
  }
}
