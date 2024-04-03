import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
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
                value: 'yes',
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
              Text('yes'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'no',
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
              Text('no'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'other',
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
              Text('other'),
            ],
          ),
        ],
      ),
    );
  }
}
