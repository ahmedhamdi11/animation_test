import 'package:animation_course/pages/animated_align.dart';
import 'package:animation_course/pages/animated_container.dart';
import 'package:animation_course/pages/animated_opacity.dart';
import 'package:animation_course/pages/animated_text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnimatedAlignExample(),
                ),
              );
            },
            child: const Text('Animated Align Example'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnimatedContainerExample(),
                ),
              );
            },
            child: const Text('Animated Container Example'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnimatedTextStyleExample(),
                ),
              );
            },
            child: const Text('Animated Text Style Example'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnimatedOpacityExample(),
                ),
              );
            },
            child: const Text('Animated Opacity Example'),
          ),
        ],
      ),
    );
  }
}
