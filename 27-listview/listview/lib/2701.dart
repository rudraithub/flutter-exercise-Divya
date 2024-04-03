import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
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
      body: ListView.builder(
        itemExtent: 30,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.list_outlined),
            title: Text('list item $index'),
            trailing: Text('Rudra it hub'),
          );
          
        },
      ),
    );
  }
}
