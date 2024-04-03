import 'package:flutter/material.dart';

class myfield extends StatefulWidget {
  const myfield({super.key});

  @override
  State<myfield> createState() => _myfieldState();
}

class _myfieldState extends State<myfield> {
  final txtName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TextField Demo'),
          backgroundColor: Colors.greenAccent,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                ),
                SizedBox(
                  width: 990.0,
                  child: TextField(
                    controller: txtName,
                    decoration:
                        InputDecoration(hintText: "Enter your UserName"),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
