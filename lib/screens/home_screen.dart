import 'package:flutter/material.dart';
import 'package:quiz_app/screens/widgets/custom_card_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff86948f),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Quiz',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ClipOval(
                child: Image.asset(
                  'assets/Ellipse 1.jpg',
                  width: 250,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomCardDetails(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
