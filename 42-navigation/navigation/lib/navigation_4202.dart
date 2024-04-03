import 'package:flutter/material.dart';

class MyHero1 extends StatefulWidget {
  const MyHero1({Key? key}) : super(key: key);

  @override
  State<MyHero1> createState() => _MyHeroState();
}

class _MyHeroState extends State<MyHero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Bar'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const Screen()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen()),
                  );
                },
                child: Text('Go To Second Screen',
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Corrected color usage
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'image',
        child: Image.network('https://picsum.photos/id/237/1200/600'),
      ),
    );
  }
}
