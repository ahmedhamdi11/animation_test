import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatelessWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tween animation builder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            const Text(
              'the text below is animated using the tween animation builder',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: value * 50,
                    ),
                    child: child,
                  ),
                );
              },
              child: const Text(
                'Animated Text',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
