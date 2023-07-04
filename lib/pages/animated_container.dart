import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.grey;
  double _radius = 8.0;
  bool _isBig = false;
  void _toggleContainer() {
    if (_isBig == false) {
      _width = 200;
      _height = 200;
      _color = Colors.orange;
      _radius = 16.0;
      _isBig = true;
      setState(() {});
    } else {
      _width = 100;
      _height = 100;
      _color = Colors.grey;
      _radius = 8.0;
      _isBig = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _toggleContainer();
          },
          child: AnimatedContainer(
            padding: const EdgeInsets.all(8.0),
            width: _width,
            height: _height,
            duration: const Duration(milliseconds: 600),
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_radius),
            ),
            child: Image.asset('assets/images/jerry.png'),
          ),
        ),
      ),
    );
  }
}
