import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 79, 185, 246),
      appBar: AppBar(
        title: const Text('Pergunte Qualquer coisa'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 95, 243),
      ),
      body: const MagicBallPage(),
    ),
  ));
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  var ballSentence = 1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(8),
          ),
          onPressed: () {
            askTheBall();
          },
          child: Image.asset('images/ball$ballSentence.png'),
        ),
      ),
    ]);
  }

  void askTheBall() {
    setState(() {
      var random = Random();
      ballSentence = random.nextInt(5) + 1;
    });
  }
}
