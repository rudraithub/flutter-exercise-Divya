import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Snackbar Example',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                final message = SnackBar(
                  content: Text(
                    'This is Demo Snackbar',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.brown,
                  duration: Duration(seconds: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                    label: 'click',
                    onPressed: () {},
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(message);
              },
              child: Text(
                'Click Me',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
