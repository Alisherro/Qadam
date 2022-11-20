import 'package:flutter/material.dart';

import '../const/learning_section_class.dart';
import 'gradient_card_widget.dart';

class LearningSectionWidget extends StatelessWidget {
  final LearningSection data;

  const LearningSectionWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientCardWidget(color1: data.leftColor, color2: data.rightColor),
        Positioned(
          left: 15,
          top: 15,
          child: Text(
            data.title,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Positioned(
          left: 15,
          top: 50,
          child: Text(
            data.subtitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Positioned(
          left: 15,
          bottom: 10,
          child: Text(
            'view more',
            style: Theme.of(context).textTheme.headline6,
          ),
        )
      ],
    );
  }
}
