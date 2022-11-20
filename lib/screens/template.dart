import 'package:flutter/material.dart';

import '../widgets/rounded_news.dart';

class TemplateWidget extends StatelessWidget {
  const TemplateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: CircleImage(
            imageProvider: AssetImage(
                'https://i.scdn.co/image/ab67616d0000b273ddff87d44e3d726372ef7f56'),
            imageRadius: 70,
          ),
        ),
      ),
    );
  }
}
