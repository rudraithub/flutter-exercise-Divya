import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            alignment: Alignment
                .center, // Aligns the children of the Stack at the center
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.pink,
                child: Text('myimage', textAlign: TextAlign.center),
              ),
              Container(
                height: 120,
                width: 100,
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_640.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
