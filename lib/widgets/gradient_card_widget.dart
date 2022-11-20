import 'package:flutter/material.dart';

class GradientCardWidget extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientCardWidget({Key? key, required this.color1, required this.color2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 150,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: const [
            0.1,
            0.9,
          ],
          colors: [
            color2,
            color1,
          ],
        ),
      ),
    );
  }
}