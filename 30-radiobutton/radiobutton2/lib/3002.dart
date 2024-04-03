import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRadioButton1 extends StatefulWidget {
  const MyRadioButton1({Key? key}) : super(key: key);

  @override
  State<MyRadioButton1> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton1> {
  String _value = 'yes'; // Changed type to String

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Radio<String>(
                 activeColor: Colors.green,
                value: 'North',
                groupValue: _value, // Removed quotes from _value
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('North'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                 activeColor: Colors.green,
                value: 'South',
                groupValue: _value, // Removed quotes from _value
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('South'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                 activeColor: Colors.green,
                value: 'East',
                groupValue: _value, // Removed quotes from _value
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('East'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                 activeColor: Colors.green,
                value: 'West',
                groupValue: _value, // Removed quotes from _value
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('West'),
            ],
          ),
        ],
      ),
    );
  }
}
