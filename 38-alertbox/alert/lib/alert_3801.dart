import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  const MyAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          TextButton(
            child: Text(
              'Show Dialog',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('alert'),
                    content: Text('Do you want to Exit'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'cancel'),
                        child: Text('cancel'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                           shape: RoundedRectangleBorder(
                           ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'ok'),
                        child: Text('ok'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                           shape: RoundedRectangleBorder(
                           ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
