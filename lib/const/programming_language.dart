import 'dart:ui';

class ProgrammingLanguage{
  final String imgUrl;
  final String name;
  final int lessonsAmount;
  final String difficulty;
  final int courseProgress;
  final Color leftColor;
  final Color rightColor;

  final List<ProgrammingLanguageCourse> courseList;

  ProgrammingLanguage(this.imgUrl, this.name, this.lessonsAmount, this.difficulty, this.courseProgress, this.leftColor, this.rightColor, this.courseList);


}

class ProgrammingLanguageCourse{
  final int id;
  final String topicName;
  final String duration;
  final bool isOpen;

  ProgrammingLanguageCourse(this.id, this.topicName, this.duration, this.isOpen);

}