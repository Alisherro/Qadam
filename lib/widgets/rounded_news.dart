import 'package:flutter/material.dart';


class CircleStory extends StatelessWidget {
  final ProgrammingLanguage language;

  const CircleStory({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).backgroundColor,
          radius: 35,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(language.imgUrl),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          language.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16
          ),
        )
      ],
    );
  }
}
