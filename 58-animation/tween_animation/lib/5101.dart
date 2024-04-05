import 'package:flutter/material.dart';

class MyTween extends StatefulWidget {
  const MyTween({Key? key}) : super(key: key);

  @override
  State<MyTween> createState() => _MyTweenState();
}

class _MyTweenState extends State<MyTween> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late Animation<Color?> colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animation =
        Tween<double>(begin: 100.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.blue)
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation Builder Bar'),
        //backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (animationController.status == AnimationStatus.completed) {
              animationController.reverse();
            } else {
              animationController.forward();
            }
          },
          child: Container(
            height: animation.value,
            width: animation.value,
            color: colorAnimation.value,
            child: Center(
              child: Text(
                'click the animation !',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
