import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const/learning_section_class.dart';
import '../const/programming_language.dart';
import '../const/tab_manager.dart';
import '../screens/python_course_screen.dart';
import 'gradient_card_widget.dart';

class LearningSectionWidget extends StatelessWidget {
  final ProgrammingLanguage data;

  const LearningSectionWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PythonCourseScreen()));
        },
        child: Container(
          child: Stack(
            children: [
              GradientCardWidget(
                  color1: data.leftColor, color2: data.rightColor),
              Positioned(
                left: 10,
                top: 12,
                child: Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
              ),
              Positioned(
                left: 15,
                top: 67,
                child: Text(data.difficulty,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    maxLines: 1),
              ),
              Positioned(
                left: 15,
                bottom: 10,
                child: Text(
                  '${data.lessonsAmount} lessons',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                right: 15,
                top: 60,
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}
