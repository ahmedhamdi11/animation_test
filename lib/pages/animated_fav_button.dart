import 'package:flutter/material.dart';

class AnimatedFavButton extends StatefulWidget {
  const AnimatedFavButton({super.key});

  @override
  State<AnimatedFavButton> createState() => _AnimatedFavButtonState();
}

class _AnimatedFavButtonState extends State<AnimatedFavButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _curve;

  @override
  void initState() {
    super.initState();

    //initialize the controller that will controll the animation
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    //define the curve that will be used in my animation
    _curve = CurvedAnimation(parent: _controller, curve: Curves.slowMiddle);

    //change the color animation using the color tween
    _colorAnimation = ColorTween(
      begin: Colors.grey[400],
      end: Colors.red,
    ).animate(_curve);

    // Size Animation Using the Tween Sequence
    _sizeAnimation = TweenSequence<double>(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 80,
            end: 95,
          ),
          weight: 50,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 95,
            end: 80,
          ),
          weight: 50,
        ),
      ],
    ).animate(_curve);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => Icon(
              Icons.favorite,
              color: _colorAnimation.value,
              size: _sizeAnimation.value,
            ),
          ),
          onPressed: () {
            _controller.isCompleted
                ? _controller.reverse()
                : _controller.forward();
          },
        ),
      ),
    );
  }
}
