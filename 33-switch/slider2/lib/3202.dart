import 'package:flutter/material.dart';

class Myslider1 extends StatefulWidget {
  const Myslider1({Key? key}) : super(key: key);

  @override
  State<Myslider1> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider1> {
  double _value1 = 20.0; // Initialize with a double value for the first slider
  double _value2 = 20.0; // Initialize with a double value for the second slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: _value1,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    activeColor: Colors.brown,
                    inactiveColor: Colors.red,
                    label: _value1.round().toString(),
                    onChanged: (double value) {
                      print(value);
                      setState(() {
                        _value1 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Text(
              'Slider Value===> ${_value1.toStringAsFixed(2)}', // Display the current value of the first slider
              style: TextStyle(color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: _value2,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    activeColor: Colors.yellow,
                    inactiveColor: Colors.red,
                    label: _value2.round().toString(),
                    onChanged: (double value) {
                      print(value);
                      setState(() {
                        _value2 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Text(
              'Slider Value===> ${_value2.toStringAsFixed(2)}', // Display the current value of the second slider
              style: TextStyle(color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
