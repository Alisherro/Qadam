import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:qadam/const/programming_language.dart';

class CourseProgressIndicator extends StatelessWidget {
  final ProgrammingLanguage language;

  const CourseProgressIndicator({Key? key, required this.language})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border:
                Border.all(width: 3, color: Theme.of(context).backgroundColor)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    language.name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    '${language.courseProgress}%',
                    style: TextStyle(fontFamily: 'Comfortaa', fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                barRadius: const Radius.circular(4),
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: language.courseProgress / 100,
                progressColor: Theme.of(context).backgroundColor,
                backgroundColor: Theme.of(context).backgroundColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
