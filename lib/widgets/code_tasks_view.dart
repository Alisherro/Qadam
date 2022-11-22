import 'package:flutter/material.dart';

import '../const/code_task.dart';

class CodeTaskWidget extends StatelessWidget {
  final CodeTask codeTask;

  const CodeTaskWidget({Key? key, required this.codeTask}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.grey),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                codeTask.name,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(codeTask.difficulty, style: Theme.of(context).textTheme.headline6,)
        ],
      ),
    );
  }
}
