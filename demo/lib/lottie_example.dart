import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieExample extends StatelessWidget {
  const LottieExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Animation"),
      ),

      body: Center(
        child: Lottie.asset(
          'assets/animations/success.json',

          width: 250,
          height: 250,

          repeat: true,
          animate: true,
        ),
      ),
    );
  }
}