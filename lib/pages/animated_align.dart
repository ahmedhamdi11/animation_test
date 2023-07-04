import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExample();
}

class _AnimatedAlignExample extends State<AnimatedAlignExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('animated align'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            alignNumber++;
          });
        },
        child: const Icon(Icons.animation),
      ),
      body: Stack(children: [
        AnimatedAlign(
          alignment: _getAlign(alignNumber),
          duration: const Duration(milliseconds: 600),
          child: Image.asset(
            'assets/images/jerry.png',
            width: 150,
            height: 150,
          ),
        ),
        AnimatedAlign(
          alignment: _getAlign(alignNumber + 1),
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            'assets/images/tom.png',
            width: 150,
            height: 150,
          ),
        ),
      ]),
    );
  }

  int alignNumber = 0;
  Alignment _getAlign(int alignNum) {
    switch (alignNum) {
      case 1:
        return Alignment.topLeft;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.bottomLeft;
      case 4:
        return Alignment.topCenter;
      case 5:
        return Alignment.bottomRight;
      case 6:
        return Alignment.centerLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.centerRight;
      default:
        alignNumber = 0;
        return Alignment.center;
    }
  }
}
