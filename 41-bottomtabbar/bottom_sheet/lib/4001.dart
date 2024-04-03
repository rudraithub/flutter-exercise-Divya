import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.greenAccent[200],
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
                          backgroundColor: Colors.green,
                          shape: BeveledRectangleBorder()),
                      child: Text(
                        'Choose Bottom Sheet',
                        style: TextStyle(color: Colors.white),
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
              backgroundColor: Colors.green,
              shape: BeveledRectangleBorder() // Set background color here
              ),
        ),
      ),
    );
  }
}
