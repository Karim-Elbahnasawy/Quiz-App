import 'package:flutter/material.dart';
import 'package:quiz_app/screens/screen2.dart';
import 'package:quiz_app/screens/widgets/custom_app_bar.dart';
import 'package:quiz_app/screens/widgets/custom_elvated_button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key, required this.userName});

  final String userName;

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<String> answers = [
    'Ahly',
    'Zamalek',
    'Elmasry',
    'ELgona',
  ];
  int correctAnswerIndex = 0;
  int correctAnswer = 0;
  bool hasAnswered = false;

  void checkAnswer(int index) {
    setState(() {
      if (index == correctAnswerIndex && !hasAnswered) {
        correctAnswer++;
        hasAnswered = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: const CustomAppBar(),
        body: Column(
          children: [
            Image.asset('assets/Ellipse 1.jpg', width: 400, height: 200),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: const Color(0xffB8E893),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Text(
                          '$correctAnswer/3',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        'What is the best team in egypt ?',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ...answers.asMap().entries.map(
                      (entry) {
                        int index = entry.key;
                        String answer = entry.value;

                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                checkAnswer(index);
                              },
                              child: Container(
                                height: 38,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      answer,
                                      style: const TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 25),
                    CustomElvatedButton(
                      text: 'NEXT',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Screen2(
                                correctAnswer: correctAnswer,
                                userName: widget.userName,
                              );
                            },
                          ),
                        );
                      },
                      color: const Color(0xff86948F),
                      backgroundColor: const Color(0xff86948F),
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
