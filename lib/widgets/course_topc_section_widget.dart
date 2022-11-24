import 'package:flutter/material.dart';
import 'package:qadam/const/python_course.dart';

class CourseTopicSectionWidget extends StatelessWidget {
  final PythonCourse data;

  const CourseTopicSectionWidget({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, data.isOpen ? '/python/${data.id}' : '');
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '${data.id}',
                style: const TextStyle(fontSize: 68),
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.topicName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    data.duration,
                    style: const TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          Center(
            child: Icon(
              data.isOpen ? Icons.play_arrow : Icons.lock_outline,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
