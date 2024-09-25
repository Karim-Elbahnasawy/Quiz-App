import 'package:flutter/material.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.backgroundColor,
    required this.textColor,
  });

  final String text;
  final void Function()? onPressed;
  final Color color;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: color,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
