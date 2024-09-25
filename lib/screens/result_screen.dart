import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/widgets/custom_elvated_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
    required this.userName,
  });

  final int score;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff86948f),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Card(
                  color: const Color(0xffABBFB8),
                  elevation: 10,
                  child: Container(
                    width: double.infinity,
                    height: 225,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 35),
                        Text(
                          'Hello $userName , Your Score Is ',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '$score / 3',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        CustomElvatedButton(
                          text: 'FINISH',
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomeScreen();
                            }));
                          },
                          color: const Color(0xffB8E896),
                          backgroundColor: const Color(0xffB8E896),
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  child: Card(
                    color: const Color(0xffB8E896),
                    elevation: 10,
                    child: Container(
                      width: 250,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'CONGRATULATIONS!!!!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
