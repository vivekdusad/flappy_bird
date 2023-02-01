import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  const MyBird({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60, width: 60, child: Image.asset("assets/flappy_bird.png"));
  }
}
