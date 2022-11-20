import 'package:flutter/material.dart';
import '../const/learning_section_class.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/learning_section_widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<LearningSection> list = [
    LearningSection(
      'Learn the Basics',
      'C++, Java, Dart, Golang...',
      Colors.indigo,
      Colors.cyan,
    ),
    LearningSection(
      'Data Structures',
      'Linked List, Queue, Stack...',
      Color(0xff6cc6cb),
      Color(0xffeae5c9),
    ),
    LearningSection(
      'Machine Learning',
      'Regression, Classification, Clustering...',
      Color(0xff7dc387),
      Color(0xffdbe9ea),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const FirstLineWidget(),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          LearningSectionWidget(data: list[index]),
                      separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                      itemCount: list.length),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget()
    );
  }
}
class FirstLineWidget extends StatelessWidget {
  const FirstLineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Learn today',
                style: Theme.of(context).textTheme.headline2,
              ),
              const Icon(Icons.search),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Junior',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )
        ],
      ),
    );
  }
}
