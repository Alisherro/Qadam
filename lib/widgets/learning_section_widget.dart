import 'package:flutter/material.dart';

import '../const/programming_language.dart';

class LearningSectionWidget extends StatelessWidget {
  final ProgrammingLanguage programmingLanguage;

  const LearningSectionWidget({Key? key, required this.programmingLanguage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.pushNamed(
              context, '/${programmingLanguage.name.toLowerCase()}');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: const [
                0.7,
                1.2,
              ],
              colors: [
                programmingLanguage.leftColor,
                programmingLanguage.rightColor,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      programmingLanguage.name,
                      style: const TextStyle(fontSize: 30),
                    ),
                    Text(
                      programmingLanguage.difficulty,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${programmingLanguage.lessonsAmount} lessons',
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//class LearningSectionWidget extends StatelessWidget {
//   final ProgrammingLanguage programmingLanguage;
//
//   const LearningSectionWidget({Key? key, required this.programmingLanguage}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: InkWell(
//         splashColor: Colors.transparent,
//         onTap: () {
//           Navigator.pushNamed(context,'/${programmingLanguage.name.toLowerCase()}');
//         },
//         child: Container(
//           child: Stack(
//             children: [
//               GradientCardWidget(
//                   color1: programmingLanguage.leftColor, color2: programmingLanguage.rightColor),
//               Positioned(
//                 left: 10,
//                 top: 12,
//                 child: Text(
//                   programmingLanguage.name,
//                   style: const TextStyle(
//                     fontSize: 48.0,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.white,
//                   ),
//                   maxLines: 1,
//                 ),
//               ),
//               Positioned(
//                 left: 15,
//                 top: 67,
//                 child: Text(programmingLanguage.difficulty,
//                     style: const TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white,
//                     ),
//                     maxLines: 1),
//               ),
//               Positioned(
//                 left: 15,
//                 bottom: 10,
//                 child: Text(
//                   '${programmingLanguage.lessonsAmount} lessons',
//                   style: const TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               const Positioned(
//                 right: 15,
//                 top: 60,
//                 child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
