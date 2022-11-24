import 'package:flutter/material.dart';

import '../const/code_task.dart';

class CodeTaskWidget extends StatelessWidget {
  final CodeTask codeTask;

  const CodeTaskWidget({Key? key, required this.codeTask}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        gradient: LinearGradient(
          colors: [
            Color(0xff667eea),
            Color(0xff764ba2),

          ]
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  codeTask.name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  codeTask.difficulty,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
            codeTask.isSolved? Icon(Icons.circle_outlined):
            Icon(Icons.task_alt),
          ],
        ),
      )
    );
  }
}
