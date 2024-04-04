import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10), // Add padding of 10 pixels to all sides
            child: Container(
              width: 50,
              height: 530,
              color: Colors.brown,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10), // Add padding of 10 pixels to all sides
            child: Container(
              width: 50,
              height: 530,
              color: Colors.blue,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(18), // Add padding of 18 pixels to all sides
                child: Container(
                  width: 450,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    border: Border.all(
                      color: Colors.grey, // Set border color to gray
                      width: 2, // Set border width
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8), // Add padding of 8 pixels to all sides
                    child: Container(
                      width: 300,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.orange, // Set the outer color here
                        border: Border.all(
                          color: Colors.grey, // Set border color to gray
                          width: 2, // Set border width
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10), // Add padding of 10 pixels to all sides
                    child: Container(
                      width: 130,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey, // Set the outer color here
                        border: Border.all(
                          color: Colors.blueAccent, // Set border color to gray
                          width: 2, // Set border width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8), // Add padding of 18 pixels to all sides
                    child: Container(
                      width: 450,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        border: Border.all(
                          color: Colors.blue, // Set border color to gray
                          width: 2, // Set border width
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8), // Add padding of 18 pixels to all sides
                    child: Container(
                      width: 450,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.blue, // Set border color to gray
                          width: 2, // Set border width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

    );
  }
}