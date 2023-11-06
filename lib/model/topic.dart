import 'package:know_base/model/question.dart';

class Topic {
  String name;
  String theme;
  String image;
  List<Question> questions;

  Topic({
    required this.name,
    required this.theme,
    required this.image,
    required this.questions,
  });
}

var topicList = [
  Topic(
    name: "Pengetahuan Umum 1",
    theme: "General",
    image: "assets/images/book.png",
    questions: generalKnowledge1Questions,
  ),
  Topic(
    name: "Pemrograman web",
    theme: "Technology",
    image: "assets/images/website.png",
    questions: webProgrammingQuestions,
  ),
  Topic(
    name: "Geografi",
    theme: "General",
    image: "assets/images/geography.png",
    questions: geographyQuestions,
  ),
  Topic(
    name: "Algoritma dan Struktur Data",
    theme: "Technology",
    image: "assets/images/algorithm.png",
    questions: algorithmsDataQuestions,
  ),
  Topic(
    name: "Pengetahuan Umum Olahraga",
    theme: "Sports",
    image: "assets/images/sports.png",
    questions: sportQuestions,
  ),
  Topic(
    name: "Pengetahuan Umum 2",
    theme: "General",
    image: "assets/images/book.png",
    questions: generalKnowledge2Questions,
  ),
  Topic(
    name: "Basic English",
    theme: "English",
    image: "assets/images/eng.png",
    questions: basicEnglishQuestions,
  ),
  Topic(
    name: "English Grammar",
    theme: "English",
    image: "assets/images/learning.png",
    questions: englishGrammarQuestions,
  ),
];
