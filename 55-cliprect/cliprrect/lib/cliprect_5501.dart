import 'package:flutter/material.dart';

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cliprect Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.brown, // Background color for the clipRRect
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Align(
                  heightFactor: 10,
                  widthFactor: 4,
                  child: Text(
                    'ClipRRect',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
