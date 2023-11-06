import 'package:flutter/material.dart';
import 'package:know_base/model/question.dart';
import 'package:know_base/pages/main_screen.dart';

String? selectedOption;

class QuizScreen extends StatefulWidget {
  final List questions;

  const QuizScreen({super.key, required this.questions});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  void handleNextQuestion(answer) {
    if (selectedOption == null) {
      // Dialog when user dont choice the answer
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const Text(
              "Silahkan pilih salah satu jawaban",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            actionsPadding: const EdgeInsets.only(right: 20, bottom: 16),
            contentPadding:
                const EdgeInsets.only(left: 26, right: 26, bottom: 30, top: 20),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Okay",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          );
        },
      );
      return;
    }

    setState(() {
      if (selectedOption == answer) score += 10;
    });

    if (currentQuestionIndex < webProgrammingQuestions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOption = null;
        return;
      });
    } else {
      // Dialog when user finish the quiz
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Skor Kamu",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 200,
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: score.toString(),
                      style: const TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF98c83c),
                      ),
                      children: const [
                        TextSpan(
                          text: "/100",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5e5e63),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            contentPadding: const EdgeInsets.only(top: 28, bottom: 54),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentQuestionIndex = 0;
                        score = 0;
                        selectedOption = null;
                      });
                      Navigator.pop(context);
                    },
                    color: const Color(0xFF2ac86b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                    child: const Text(
                      " Ulangi Kuis ",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 14),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()),
                        (rpute) => false,
                      );
                      selectedOption = null;
                    },
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: const Color(0xFF2ac86b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                    child: const Text(
                      " Topik Lain ",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Question listQuestion = widget.questions[currentQuestionIndex];
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "QUESTION ${currentQuestionIndex + 1} OF 10",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFa3a3af),
                ),
              ),
              const SizedBox(height: 10),

              // Question
              Text(
                listQuestion.question,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),

              // Answer options
              Expanded(
                  flex: 9,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth <= 700) {
                        return AnswerOptionList(
                          answerOptions: listQuestion.answerOptions,
                        );
                      } else {
                        return AnswerOptionGrid(
                          answerOptions: listQuestion.answerOptions,
                        );
                      }
                    },
                  )),

              // Next or Finish button
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: MaterialButton(
                    onPressed: () => handleNextQuestion(
                      listQuestion.correctAnswer,
                    ),
                    minWidth: 500,
                    height: 50,
                    color: const Color(0xFF6a5ae0),
                    textColor: Colors.white,
                    child: Text(
                      currentQuestionIndex < webProgrammingQuestions.length - 1
                          ? "Next"
                          : "Finish",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class AnswerOptionList extends StatefulWidget {
  final List<String> answerOptions;

  const AnswerOptionList({
    super.key,
    required this.answerOptions,
  });

  @override
  State<AnswerOptionList> createState() => _AnswerOptionListState();
}

class _AnswerOptionListState extends State<AnswerOptionList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...widget.answerOptions.map(
          (option) {
            return Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      selectedOption = option;
                    });
                  },
                  minWidth: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: (selectedOption == option)
                      ? const Color(0xFF55efc4)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      width: (selectedOption == option) ? 1 : 0.6,
                      color: Colors.black,
                    ),
                  ),
                  child: Text(
                    option,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: (selectedOption == option)
                          ? FontWeight.w600
                          : FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 12)
              ],
            );
          },
        ),
      ],
    );
  }
}

class AnswerOptionGrid extends StatefulWidget {
  final List<String> answerOptions;

  const AnswerOptionGrid({
    super.key,
    required this.answerOptions,
  });

  @override
  State<AnswerOptionGrid> createState() => _AnswerOptionGridState();
}

class _AnswerOptionGridState extends State<AnswerOptionGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 30,
      crossAxisSpacing: 30,
      childAspectRatio: 8,
      children: [
        ...widget.answerOptions.map(
          (option) {
            return MaterialButton(
              onPressed: () {
                setState(() {
                  selectedOption = option;
                });
              },
              height: 100,
              minWidth: double.infinity,
              padding: const EdgeInsets.all(16),
              color: (selectedOption == option)
                  ? const Color(0xFF55efc4)
                  : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  width: (selectedOption == option) ? 1 : 0.6,
                  color: Colors.black,
                ),
              ),
              child: Text(
                option,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: (selectedOption == option)
                      ? FontWeight.w600
                      : FontWeight.w500,
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
