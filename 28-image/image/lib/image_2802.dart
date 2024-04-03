import 'package:flutter/material.dart';

class myimage1 extends StatelessWidget {
  const myimage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My image App',
        style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.pink,
        ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.network('https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_640.jpg',height: 200,width: 200,),
          const SizedBox(height: 120),
           Image.network('https://cdn.pixabay.com/photo/2013/04/04/12/34/mountains-100367_640.jpg',height: 200,width: 200,),
        ],
      ),
      );
    
  }
}