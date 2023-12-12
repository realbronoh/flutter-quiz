import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;
  static const gradientColors = [
    Colors.yellow,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 240,
            ),
            const SizedBox(height: 40),
            const Text('Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                )),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                // shape: const StadiumBorder(),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
