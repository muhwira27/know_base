import 'package:flutter/material.dart';
import 'package:know_base/model/topic.dart';
import 'package:know_base/pages/quiz_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF6a5ae0),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return const QuizTopicList();
            } else if (constraints.maxWidth <= 1000) {
              return const QuizTopicGrid(gridCount: 2);
            } else {
              return const QuizTopicGrid(gridCount: 4);
            }
          },
        ),
      ),
    );
  }
}

class QuizTopicList extends StatelessWidget {
  const QuizTopicList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Know the Basic",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ],
            ),
          ),

          // List Quiz Topic
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Quiz",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),

                  // List Quiz Topic Card
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        final Topic topics = topicList[index];
                        return TopicCardMobile(
                          name: topics.name,
                          theme: topics.theme,
                          image: topics.image,
                          questions: topics.questions,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                      itemCount: topicList.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuizTopicGrid extends StatelessWidget {
  final int gridCount;

  const QuizTopicGrid({
    super.key,
    required this.gridCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Know the Basic",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                ),
              ],
            ),
          ),

          // List Quiz Topic
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Quiz",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),

                  // List Quiz Topic Card
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: gridCount,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 30,
                      ),
                      itemBuilder: (context, index) {
                        final Topic topics = topicList[index];

                        return TopicCardWeb(
                          name: topics.name,
                          theme: topics.theme,
                          image: topics.image,
                          questions: topics.questions,
                        );
                      },
                      itemCount: topicList.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopicCardMobile extends StatelessWidget {
  final String name;
  final String theme;
  final String image;
  final List questions;

  const TopicCardMobile({
    super.key,
    required this.name,
    required this.theme,
    required this.image,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(
              questions: questions,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFb1b1bc)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Image
            Expanded(
              flex: 1,
              child: Image.asset(
                image,
                height: 60,
              ),
            ),

            // Title and description
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "$theme - 10 Question",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            // Arrow Icon
            const SizedBox(
              width: 50,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Color(0xFF6a5ae0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopicCardWeb extends StatelessWidget {
  final String name;
  final String theme;
  final String image;
  final List questions;

  const TopicCardWeb({
    super.key,
    required this.name,
    required this.theme,
    required this.image,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(
              questions: questions,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFb1b1bc)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image
            Expanded(
              flex: 1,
              child: Image.asset(
                image,
              ),
            ),

            // Title and description
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "$theme - 10 Question",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
