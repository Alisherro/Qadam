import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const/learning_section_class.dart';
import '../const/tab_manager.dart';
import '../screens/course_screen.dart';
import 'gradient_card_widget.dart';

class LearningSectionWidget extends StatelessWidget {
  final LearningSection data;

  const LearningSectionWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Provider.of<TabManager>(context, listen: false).goToTab(1);
        },
        child: Container(
          child: Stack(
            children: [
              GradientCardWidget(
                  color1: data.leftColor, color2: data.rightColor),
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
          ),
        ),
      ),
    );
  }
}
