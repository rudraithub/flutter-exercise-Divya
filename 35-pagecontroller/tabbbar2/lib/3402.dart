import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mytabbar1 extends StatefulWidget {
  const mytabbar1({Key? key}) : super(key: key);

  @override
  State<mytabbar1> createState() => _mytabbarState();
}

class _mytabbarState extends State<mytabbar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Demo'),
          backgroundColor: Colors.yellow,
          titleTextStyle: TextStyle(color: Colors.black),
          bottom: TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.alarm,
                  
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.flash_on_rounded,
                  
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.house,
                 
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.list,
               
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.alarm),
            Icon(Icons.flash_on_rounded),
            Icon(Icons.house),
            Icon(Icons.list),
          ],
        ),
      ),
    );
  }
}
