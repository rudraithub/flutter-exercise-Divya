import 'package:flutter/material.dart';

class MySliverBar extends StatefulWidget {
  const MySliverBar({Key? key}) : super(key: key);

  @override
  State<MySliverBar> createState() => _MySliverBarState();
}

class _MySliverBarState extends State<MySliverBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Sliver Appbar Demo',
                style: TextStyle(color: Color.fromARGB(255, 205, 4, 71)),
              ),
              background: Image.network(
                'https://cdn.pixabay.com/photo/2017/12/10/20/56/feather-3010848_640.jpg',
                fit: BoxFit.cover,
              ),
            ),
            leading: Icon(Icons.menu),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: Text('Item 1'),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text('Item 2'),
                      value: 2,
                    ),
                  ];
                },
                onSelected: (value) {
                  // Handle item selection here
                  print('Selected item: $value');
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('item ${1 + index}'),
                );
              },
              childCount: 30,
            ),
          ), // Add a closing parenthesis here
        ],
      ),
    );
  }
}
