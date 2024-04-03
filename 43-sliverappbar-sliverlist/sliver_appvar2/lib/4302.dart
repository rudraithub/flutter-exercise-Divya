// Import dart:io instead of dart:html

import 'package:flutter/material.dart';

class MySliverBar1 extends StatefulWidget {
  const MySliverBar1({Key? key}) : super(key: key);

  @override
  State<MySliverBar1> createState() => _MySliverBarState();
}

class _MySliverBarState extends State<MySliverBar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'I Am Flutter Developer',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 40,
                ),
              ),
              centerTitle: true,
              background: Image.network(
                'https://cdn.pixabay.com/photo/2014/12/24/05/02/drop-of-water-578897_1280.jpg',
                fit: BoxFit.cover,
              ),
            ),
            leading: Icon(Icons.menu, color: Colors.yellow),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message, color: Colors.yellow),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, color: Colors.yellow),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.login, color: Colors.yellow),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 110,
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 110,
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: Color.fromARGB(255, 163, 58, 181),
              ),
              Container(
                height: 110,
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 110,
                child: Text(
                  '4',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
                color: const Color.fromARGB(255, 163, 58, 181),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
