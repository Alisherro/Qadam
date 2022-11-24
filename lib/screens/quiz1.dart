import 'package:flutter/material.dart';

import 'result_page.dart';

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question(
      {required this.text,
      required this.options,
      this.isLocked = false,
      this.selectedOption});
}

class Option {
  final String text;
  final bool isCorrect;

  Option({required this.isCorrect, required this.text});
}

final questions = [
  Question(text: 'Python был создан  ', options: [
    Option(isCorrect: false, text: 'к концу 1976 году'),
    Option(isCorrect: true, text: 'к 1991 году'),
    Option(isCorrect: false, text: 'в начале 19 века'),
    Option(isCorrect: false, text: 'в 2001 году'),
  ]),
  Question(text: 'Python характеризуется.. ', options: [
    Option(isCorrect: false, text: 'ясным синтаксисом'),
    Option(isCorrect: false, text: 'красивыми звездами'),
    Option(isCorrect: true, text: 'змеей'),
    Option(isCorrect: false, text: 'зеленым '),
  ]),
  Question(
      text: 'Свое имя - Python - получил от названия..',
      options: [
        Option(isCorrect: false, text: 'оружия'),
        Option(isCorrect: false, text: 'пресмыкающегося'),
        Option(isCorrect: true, text: 'телесериала'),
      ]),
];

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  late PageController controller;
  int questionNumber = 1;
  int score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

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
            ],),),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    '$questionNumber/${questions.length}',
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xff282c35),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      child: PageView.builder(
                        controller: controller,
                        itemCount: questions.length,
                        itemBuilder: ((context, index) {
                          final question = questions[index];
                          return buildQuestions(question);
                        }),
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Column buildQuestions(Question question) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Text(question.text,
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 20)),
        const SizedBox(
          height: 32,
        ),
        Expanded(
            child: OptionsWidget(
          onClickedOption: (option) {
            if (question.isLocked) {
              return;
            } else {
              setState(() {
                question.isLocked = true;
                question.selectedOption = option;
              });
              _isLocked = question.isLocked;
              if (question.selectedOption!.isCorrect) {
                score++;
              }
            }
          },
          question: question,
        )),
        _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
        onPressed: () {
          if (questionNumber < questions.length) {
            controller.nextPage(
                duration: const Duration(microseconds: 250),
                curve: Curves.easeInExpo);

            setState(() {
              questionNumber++;
              _isLocked = false;
            });
          } else {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: ((context) =>
                        ResultPage(score: score, number: questions.length))));
          }
        },
        child: Text(questionNumber < questions.length
            ? 'Следующий'
            : 'Посмотреть результат'));
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;
  const OptionsWidget(
      {super.key, required this.question, required this.onClickedOption});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: question.options
          .map((option) => buildOption(context, option))
          .toList(),
    ));
  }

  Widget buildOption(BuildContext context, Option option) {
    final Color color = getColor(option, question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: getOptionColor(option, question),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: color)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(option.text, style: const TextStyle(fontSize: 15)),
              ),
              getIcon(option, question)
            ],
          ),
        ),
      ),
    );
  }

  getOptionColor(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return const Color(0xff4b5363);
  }

  getColor(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return const Color(0xff3c4454);
  }

  Widget getIcon(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                  Icons.check_circle_outline_rounded,
                  color: Colors.green,
                ),
              )
            : const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                  Icons.cancel_outlined,
                  color: Colors.red,
                ),
              );
      } else if (option.isCorrect) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(
            Icons.check_circle_outline_rounded,
            color: Colors.green,
          ),
        );
      }
    }
    return const SizedBox.shrink();
  }
}
