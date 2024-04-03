import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver Grid demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0), // Adjust padding as needed
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25.0, // Adjust spacing as needed
            mainAxisSpacing: 25.0, 
            // Adjust spacing as needed
          ),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 500, // Set the desired height here
              child: Container(
                color: Colors.pink,
                alignment: Alignment.center,
                child: Text('Item ${index + 1}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
