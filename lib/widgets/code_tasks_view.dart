import 'package:flutter/material.dart';

import '../const/code_task.dart';

class CodeTaskWidget extends StatelessWidget {
  final CodeTask codeTask;

  const CodeTaskWidget({Key? key, required this.codeTask}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.green,
                Colors.blueGrey,
              ],),
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                codeTask.name,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 5,),
              Text(codeTask.difficulty, style: Theme.of(context).textTheme.headline6,)
            ],
          )
        ],
      ),
    );
  }
}