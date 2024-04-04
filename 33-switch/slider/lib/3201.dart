import 'package:flutter/material.dart';

class Myslider extends StatefulWidget {
  const Myslider({Key? key}) : super(key: key);

  @override
  State<Myslider> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
  double _value = 20.0; // Initialize with a double value

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
                    value: _value,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.yellow,
                    label: _value.round().toString(),
                    onChanged: (double value) {
                      print(value);
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Text(
              'Slider Value===> ${_value.toStringAsFixed(2)}', // Display the current slider value
              style: TextStyle(color: Colors.green),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
