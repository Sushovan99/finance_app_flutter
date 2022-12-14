import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final Color textColor;

  const Button({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print('press $buttonText'),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: const StadiumBorder(),
        foregroundColor: textColor,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 45,
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
