import 'package:flutter/material.dart';
import 'package:quiz_app/screens/screen1.dart';
import 'package:quiz_app/screens/widgets/custom_elvated_button.dart';

class CustomCardDetails extends StatelessWidget {
  CustomCardDetails({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                const Text(
                  'Please Enter Your Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  elevation: 10,
                  child: SizedBox(
                    width: 300,
                    height: 40,
                    child: TextField(
                      cursorHeight: 25,
                      cursorColor: Colors.black,
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomElvatedButton(
                  text: 'SUBMIT',
                  onPressed: () {
                    String name = nameController.text;
                    if (name.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please Enter Your Name'),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen1(userName: name),
                        ),
                      );
                    }
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
              width: 192,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Welcome',
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
    );
  }
}
