import 'package:flutter/material.dart';

import '../const/code_task.dart';

class CodeTaskWidget extends StatelessWidget {
  final CodeTask codeTask;

  const CodeTaskWidget({Key? key, required this.codeTask}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        gradient: LinearGradient(
          colors: [
            Color(0xff667eea),
            Color(0xff764ba2),

          ]
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  codeTask.name,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  codeTask.difficulty,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
            codeTask.isSolved? const Icon(Icons.circle_outlined):
            const Icon(Icons.task_alt),
          ],
        ),
      )
    );
  }
}
