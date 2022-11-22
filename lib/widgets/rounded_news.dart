import 'package:flutter/material.dart';


class CircleStory extends StatelessWidget {
  final ProgrammingLanguage language;

  const CircleStory({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).backgroundColor,
            radius: 40,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(language.imgUrl),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            language.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }
}
