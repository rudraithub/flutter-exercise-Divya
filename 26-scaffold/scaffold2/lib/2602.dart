import 'package:flutter/material.dart';

class MyScaffold1 extends StatelessWidget {
  const MyScaffold1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Scaffold'),
        backgroundColor: Colors.deepPurpleAccent,
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
                  labelStyle: TextStyle(color: Colors.blue),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  prefix: Icon(Icons.person, color: Colors.blue[400]),
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
                  labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                  prefixIcon: Icon(Icons.person, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  labelText: " Username",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                  prefixIcon: Icon(Icons.person, color: Colors.blue),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurpleAccent),
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
                        Text(
                          'login',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(width: 120),
                        Text(
                          'Discard',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 120),
                        Text(
                          'Forward',
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(width: 120),
                        Text(
                          'save',
                          style: TextStyle(color: Colors.yellow),
                        ),
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
