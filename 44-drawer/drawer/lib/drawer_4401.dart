import 'package:flutter/material.dart';

class MyScaffold2 extends StatelessWidget {
  const MyScaffold2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Add actions if needed
        actions: [],
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          // Setting background color to brown
          // Using Colors.brown from the Material Design color palette
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('John Doe'), 
              accountEmail: const Text('JohnDoe@example.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
              // Background color for the header
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text('Login'),
                  leading: Icon(Icons.login),
                ),
                ListTile(
                  title: Text('Save'),
                  leading: Icon(Icons.save),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
