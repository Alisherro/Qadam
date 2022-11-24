import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage({super.key, required this.score, required this.number});
  int number;
  int score;
  late double result = score / number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: CircularPercentIndicator(
                radius: 100,
                center: Text('${(result * 100).toInt()}%', style: const TextStyle(fontSize: 20),),
                lineWidth: 30,
                percent: result,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: scoreColor(result),
              ),
            ),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}

Color scoreColor(double x) {
  return Color.fromRGBO(x >= 0.5 ? ((1 - x) / 0.5 * 255).toInt() : 255,
      x > 0.5 ? 255 : (x / 0.5 * 255).toInt(), 0, 1);
}
