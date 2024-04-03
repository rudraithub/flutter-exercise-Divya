import 'package:flutter/material.dart';

class MyWraps1 extends StatelessWidget {
  const MyWraps1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.home),
            alignment: Alignment.bottomRight,
            color: Colors.red,
          ),
        ],
      ),
      body: Wrap(
        spacing: 10,
        runSpacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 180,
            width: 200,
            color: Colors.pink,
            child: Center(
              child: Text(
                'My',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 180,
            width: 200,
            color: Colors.grey,
            child: Center(
              child: Text(
                'Name',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 180,
            width: 200,
            color: Colors.yellow,
            child: Center(
              child: Text(
                'is',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 180,
            width: 200,
            color: Colors.purple,
            child: Center(
              child: Text(
                'Rudra it hub',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          'click',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
