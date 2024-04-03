import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Scaffold'),
        backgroundColor: Colors.blueAccent,
        actions: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.home),
          alignment: Alignment.bottomRight, // Move alignment here
        ),
        ]
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Column(
              children: [
                ListTile(
                  title: Text('home'),
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
            )
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          return Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                  labelStyle: TextStyle(color: Colors.green),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  prefix: Icon(Icons.person, color: Colors.green[400]),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  suffixIconColor: Colors.red,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  labelText: " Username",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                  prefixIcon: Icon(Icons.person, color: Colors.green),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  labelText: " Username",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                  prefixIcon: Icon(Icons.person, color: Colors.green),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {},
                child: Text(
                  'enabled',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Row(
                      children: [
                        Text('save'),
                        SizedBox(width: 120),
                        Text('login'),
                        SizedBox(width: 120),
                        Text('save'),
                      ],
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'Click',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
