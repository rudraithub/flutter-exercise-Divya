import 'package:flutter/material.dart';

class MyWraps extends StatelessWidget {
  const MyWraps({Key? key}) : super(key: key);

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
            margin: EdgeInsets.all(30),
            height: 220,
            width: 220,
            color: Colors.amberAccent,
            child: Center(
              child: Text(
                'item1',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 220,
            width: 220,
            color: Colors.pink,
            child: Center(
              child: Text(
                'item2',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 220,
            width: 220,
            color: Colors.blue,
            child: Center(
              child: Text(
                'item3',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 220,
            width: 220,
            color: Colors.purple,
            child: Center(
              child: Text(
                'item4',
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
