import 'package:animation_course/pages/animated_align.dart';
import 'package:animation_course/pages/animated_container.dart';
import 'package:animation_course/pages/animated_fav_button.dart';
import 'package:animation_course/pages/animated_opacity.dart';
import 'package:animation_course/pages/animated_physical_model.dart';
import 'package:animation_course/pages/animated_text_style.dart';
import 'package:animation_course/pages/hero_animation.dart';
import 'package:animation_course/pages/tween_animation_builder.dart';
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
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnimatedPhysicalModelExample(),
                ),
              );
            },
            child: const Text('Animated Physical Model Example'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TweenAnimationBuilderExample(),
                ),
              );
            },
            child: const Text('Tween Animation Builder Example'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HeroAnimationExample(),
                ),
              );
            },
            child: const Text('Hero Animation Example'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnimatedFavButton(),
                ),
              );
            },
            child: const Text('Animated Fav Button'),
          ),
        ],
      ),
    );
  }
}
