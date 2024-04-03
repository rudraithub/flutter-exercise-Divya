import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _widthAnimation;
  Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // Pass 'this' as vsync
      duration: Duration(seconds: 2),
    );

    _widthAnimation = Tween<double>(
      begin: 100.0,
      end: 300.0,
    ).animate(_controller);

    _heightAnimation = Tween<double>(
      begin: 100.0,
      end: 200.0,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Demo'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: _widthAnimation.value,
              height: _heightAnimation.value,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
