import 'package:flutter/material.dart';

class MyButton1 extends StatelessWidget {
  const MyButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.pink[50],
              context: context,
              builder: (BuildContext context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Rudra It Hub'),
                      contentPadding: EdgeInsets.symmetric(horizontal: 250),
                      // Set background color here
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: BeveledRectangleBorder()),
                      child: Text(
                        'Choose Bottom Sheet',
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                    ListTile(
                      title: Text('I am  Bottomsheet'),
                      contentPadding: EdgeInsets.symmetric(horizontal: 250),

                      // Set background color here
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            'Show Bottom Sheet',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: BeveledRectangleBorder() // Set background color here
              ),
        ),
      ),
    );
  }
}
