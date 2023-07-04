import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isVisable = !isVisable;
          setState(() {});
        },
        child: Icon(isVisable ? Icons.visibility : Icons.visibility_off),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedOpacity(
              opacity: isVisable ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Image.asset(
                'assets/images/tom.png',
                width: 200,
                height: 200,
              ),
            ),
            AnimatedOpacity(
              opacity: isVisable ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1500),
              child: Image.asset(
                'assets/images/jerry.png',
                width: 200,
                height: 200,
              ),
            ),
            AnimatedOpacity(
              opacity: isVisable ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 2500),
              child: Image.asset(
                'assets/images/dog.png',
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
