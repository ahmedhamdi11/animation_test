import 'package:flutter/material.dart';

class AnimatedTextStyleExample extends StatefulWidget {
  const AnimatedTextStyleExample({super.key});

  @override
  State<AnimatedTextStyleExample> createState() =>
      _AnimatedTextStyleExampleState();
}

class _AnimatedTextStyleExampleState extends State<AnimatedTextStyleExample> {
  Color _color = Colors.grey;
  double _size = 16;
  bool _isBig = false;
  void _toggleText() {
    if (_isBig == false) {
      _color = Colors.orange;
      _size = 28;
      _isBig = true;
      setState(() {});
    } else {
      _color = Colors.grey;
      _size = 16;
      _isBig = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
              style: TextStyle(
                color: _color,
                fontSize: _size,
              ),
              duration: const Duration(milliseconds: 500),
              child: const Text('Animated Text Style'),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                _toggleText();
              },
              child: const Text(
                'Toggle Text',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
