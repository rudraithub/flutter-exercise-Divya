import 'package:flutter/material.dart';

class MyOpacity extends StatelessWidget {
  const MyOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Demo'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Normal Text',
              style: TextStyle(color: Colors.pink),
            ),
            SizedBox(height: 10,),
            Opacity(
              opacity: 0.5,
              child: Text(
                ' Opacity Text',
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


