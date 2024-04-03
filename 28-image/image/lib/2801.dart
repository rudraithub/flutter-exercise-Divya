import 'package:flutter/material.dart';

class myimage extends StatelessWidget {
  const myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My image App',
        style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.amber,
        ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.network('https://picsum.photos/id/237/200/200'),
          const SizedBox(height: 120),
           Image.network('https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990_640.jpg',height: 200,width: 200,),
        ],
      ),
      );
    
  }
}