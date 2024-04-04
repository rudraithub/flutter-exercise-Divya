import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  const MyAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Dialog Demo'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Invalid OTP'),
                  content: Text('Please enter valid OTP'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'OK');
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            'Show Dialog',
            style: TextStyle(color: Colors.white),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}
