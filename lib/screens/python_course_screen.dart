import 'package:flutter/material.dart';
import 'package:qadam/screens/main_screen.dart';

import '../const/python_course.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/course_topc_section_widget.dart';

class PythonCourseScreen extends StatefulWidget {
  const PythonCourseScreen({Key? key}) : super(key: key);

  @override
  State<PythonCourseScreen> createState() => _PythonCourseScreenState();
}

class _PythonCourseScreenState extends State<PythonCourseScreen> {
  bool isFavorite = false;

  final List<PythonCourse> _courseList = [
    PythonCourse(1, 'Введение', '30 min', true),
    PythonCourse(2, 'Типы данных', '60 min', true),
    PythonCourse(3, 'Ввод и вывод данных', '60 min', true),
    PythonCourse(4, 'Условный оператор', '60 min', false),
    PythonCourse(5, 'Строки', '60 min', false),
    PythonCourse(6, 'Циклы', '45 min', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [
              Colors.indigo,
              Colors.cyan,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        IconButton(
                          icon: isFavorite
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                          onPressed: () {
                            setState(
                              () {
                                isFavorite = !isFavorite;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/Python_logo_icon.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Python',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.white),
                                    const Text(
                                      '4.5',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          'Бесплтано',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(38),
                        topRight: Radius.circular(38))),
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Учебный план',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w500)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('5 уроков',
                              style: TextStyle(color: Colors.grey.shade600)),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            '32 минуты',
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return CourseTopicSectionWidget(
                              data: _courseList[index],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider(
                              thickness: 2,
                              height: 20,
                            );
                          },
                          itemCount: 5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
