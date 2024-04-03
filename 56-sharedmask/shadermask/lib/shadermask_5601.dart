import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShaderMaskDemo(),
    );
  }
}

class ShaderMaskDemo extends StatefulWidget {
  @override
  _ShaderMaskDemoState createState() => _ShaderMaskDemoState();
}

class _ShaderMaskDemoState extends State<ShaderMaskDemo> {
  final LinearGradient _gradient = LinearGradient(
    colors: <Color>[
      Colors.red,
      Colors.blue,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShaderMask Demo'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (Rect rect) {
            return _gradient.createShader(rect);
          },
          child: Text(
            'Shader Mask Demo',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
