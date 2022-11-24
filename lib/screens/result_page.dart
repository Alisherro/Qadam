import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class ResultPage extends StatefulWidget {
  ResultPage({super.key, required this.score, required this.number});
  int number;
  int score;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late double result = widget.score / widget.number;

  bool text = true;
  @override
  void setState(VoidCallback fn) {
    if (result < 0.5) {
      text = false;
    }
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    String cong = 'Поздравляю!';
    String los = 'Неплохо, но попробуй еще раз!';
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircularPercentIndicator(
                    radius: 100,
                    center: Text(
                      '${(result * 100).toInt()}%',
                      style: const TextStyle(fontSize: 20),
                    ),
                    lineWidth: 30,
                    percent: result,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: scoreColor(result),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    text ? cong : los,
                    style: const TextStyle(fontSize: 40),
                  ),
                ],
              ),
              ElevatedButton(
                
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: scoreColor(result),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: const Text('Продолжить'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Color scoreColor(double x) {
  return Color.fromRGBO(x >= 0.5 ? ((1 - x) / 0.5 * 255).toInt() : 255,
      x > 0.5 ? 255 : (x / 0.5 * 255).toInt(), 0, 1);
}
