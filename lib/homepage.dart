import 'package:flappy_bird/bird.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double birdYAxis = 0;

  double time = 0;
  double height = 0;
  double initialHeight = 0;


  bool gameHasStarted = ffalse;

  void _jump() {
    initialHeight = birdYAxis;
    setState(() {
      birdYAxis -= 0.1;
    });
  }

  void startGame() {
    gameHasStarted = true;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: _jump,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 0),
                alignment: Alignment(0, birdYAxis),
                color: Colors.blue,
                child: const MyBird(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
