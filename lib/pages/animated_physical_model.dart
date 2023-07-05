import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool _isPressed = false;
  void _toggleAnimation() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Phisical Model Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _toggleAnimation(),
          child: AnimatedPhysicalModel(
            shape: BoxShape.circle,
            elevation: _isPressed ? 0.0 : 48.0,
            color: Colors.grey,
            shadowColor: Colors.blueGrey,
            duration: const Duration(milliseconds: 400),
            child: Image.asset(
              'assets/images/tom.png',
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
    );
  }
}
