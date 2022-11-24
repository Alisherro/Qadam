import 'package:flutter/material.dart';
import 'package:qadam/screens/quiz.dart';

class UnbordingContent {
  String discription;

  UnbordingContent(
      {required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      discription: "assets/images/first.jpg"),
  UnbordingContent(
      discription:
          "assets/images/second.jpg"),
  UnbordingContent(
      discription: "assets/images/third.jpg"),
  UnbordingContent(
      discription: "assets/images/fourth.jpg"),
];

class PythonTopic1 extends StatefulWidget {
  const PythonTopic1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PythonTopic1State createState() => _PythonTopic1State();
}

class _PythonTopic1State extends State<PythonTopic1> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6cc6cb),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 36.0, horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Python',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 46,
                            fontWeight: FontWeight.bold)),
                    Text('Ввод и вывод данных',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold)),
                  ]),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 5,
            child: PageView.builder(
              itemBuilder: (_, i) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Title of the topic and programming language

                    Expanded(
                      child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Expanded(
                              flex: 5,
                              child: PageView.builder(
                                  controller: _controller,
                                  itemCount: contents.length,
                                  onPageChanged: (int index) {
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                  itemBuilder: (_, i) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(height: 10,),
                                        Image.asset(contents[i].discription),
                                        Container(
                                          height: 60,
                                          margin: const EdgeInsets.all(40),
                                          width: double.infinity,
                                          child: FloatingActionButton(
                                            child: Icon(currentIndex ==
                                                    contents.length - 1
                                                ? Icons.question_mark_rounded
                                                : Icons.arrow_forward_ios_rounded),
                                            onPressed: () {
                                              if (currentIndex ==
                                                  contents.length - 1) {
                                                Navigator.pushNamed(context, '/python/1/quiz');
                                              }
                                              _controller!.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 100),
                                                curve: Curves.bounceIn,
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    );
                                  }))),
                    ),
                  ],
                );
              },
            ),
            
          ),
          
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
