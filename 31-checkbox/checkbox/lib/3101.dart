import 'package:flutter/material.dart';

class mycheckbox extends StatefulWidget {
  const mycheckbox({super.key});

  @override
  State<mycheckbox> createState() => _mycheckboxState();
}

class _mycheckboxState extends State<mycheckbox> {
  bool ch1 = false;
  bool ch2 = false;
  bool ch3 = false;
  bool ch4 = false;
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
              Text('chess'),
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
              Text('Criket'),
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
              Text('Carrom'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: Colors.blue,
                  value: ch4,
                  onChanged: (val) {
                    setState(() {
                      ch3 = val!;
                    });
                  }),
              SizedBox(
                width: 10.0,
              ),
              Text('Hokey'),
            ],
          ),
        ],
      ),
    );
  }
}
