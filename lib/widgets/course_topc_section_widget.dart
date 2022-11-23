import 'package:flutter/material.dart';
import 'package:qadam/const/python_course.dart';

class CourseTopicSectionWidget extends StatelessWidget {
  final PythonCourse data;

  const CourseTopicSectionWidget({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '${data.id}',
                style: TextStyle(fontSize: 68),
              ),
              SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.topicName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    data.duration,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          Center(
            child: Icon( data.isOpen? Icons.play_arrow: Icons.lock_outline),
          )
        ],
      ),
    );
  }
}
