import 'package:flutter/material.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inkwell Demo'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              splashColor: Colors.deepPurpleAccent,
              highlightColor: Colors.amberAccent,
              //borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Container(
                height: 50,
                width: 100,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    'Tap Me!',
                    style: TextStyle(fontSize: 20),
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
