import 'package:flutter/material.dart';

class mypopupmenu extends StatelessWidget {
  const mypopupmenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Demo'),
        backgroundColor: Colors.yellow,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 'setting',
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 8), // Add space between icon and text
                      Text('Setting'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'logout',
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 8), // Add space between icon and text
                      Text('Logout'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'share',
                  child: Row(
                    children: [
                      Icon(Icons.share),
                      SizedBox(width: 8), // Add space between icon and text
                      Text('Share'),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Set mainAxisAlignment here
          children: [
            Text('Press the Button in the app bar to see the popup menu!'),
          ],
        ),
      ),
    );
  }
}
