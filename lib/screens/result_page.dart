import 'package:flutter/material.dart';
import 'package:qadam/screens/quiz.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.score});
  final int score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('You got $score/${questions.length}')),
    );
  }
}
