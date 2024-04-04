import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mytabbar extends StatefulWidget {
  const mytabbar({Key? key}) : super(key: key);

  @override
  State<mytabbar> createState() => _mytabbarState();
}

class _mytabbarState extends State<mytabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Demo'),
          backgroundColor: Colors.pink,
          titleTextStyle: TextStyle(color: Colors.white),
          bottom: TabBar(
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.download,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.download),
            Icon(Icons.search),
            Icon(Icons.home),
          ],
        ),
      ),
    );
  }
}
