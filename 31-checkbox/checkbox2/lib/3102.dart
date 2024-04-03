import 'package:flutter/material.dart';

class mycheckbox1 extends StatefulWidget {
  const mycheckbox1({super.key});

  @override
  State<mycheckbox1> createState() => _mycheckboxState();
}

class _mycheckboxState extends State<mycheckbox1> {
  bool ch1 = false;
  bool ch2 = false;
  bool ch3 = false;
  bool ch4 = false;
  bool ch5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: Colors.blue,
                  value: ch1,
                  onChanged: (val) {
                    setState(() {
                      ch1 = val!;
                    });
                  }),
              SizedBox(
                width: 10.0,
              ),
              Text('Travel',
              style: TextStyle(color: Colors.red),
        ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.blue,
                  value: ch2,
                  onChanged: (val) {
                    setState(() {
                      ch2 = val!;
                    });
                  }),
              SizedBox(
                width: 10.0,
              ),
              Text('Music',
              style: TextStyle(color: Colors.red),
        ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.blue,
                  value: ch3,
                  onChanged: (val) {
                    setState(() {
                      ch3 = val!;
                    });
                  }),
              SizedBox(
                width: 10.0,
              ),
              Text('Shopping',
              style: TextStyle(color: Colors.red),
        ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.blue,
                  value: ch4,
                  onChanged: (val) {
                    setState(() {
                      ch4 = val!;
                    });
                  }),
              SizedBox(
                width: 10.0,
              ),
              Text('Reading',
              style: TextStyle(color: Colors.red),
        ),
            ],
          ),
           Row(
            children: [
              Checkbox(
                activeColor: Colors.blue,
                  value: ch5,
                  onChanged: (val) {
                    setState(() {
                      ch5 = val!;
                    });
                  }),
              SizedBox(
                width: 10.0,
              ),
              Text('Swimming',
              style: TextStyle(color: Colors.red),
        ),
            ],
          ),
        ],
      ),
    );
  }
}
