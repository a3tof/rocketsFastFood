import 'package:flutter/material.dart';

class CustomSocialButtonLogin extends StatelessWidget {
  const CustomSocialButtonLogin(
      {super.key,
      required this.title,
      required this.icon,
      required this.buttonColor,
      required this.iconColor,
      required this.textColor});

  final String title;
  final IconData icon;
  final Color buttonColor;
  final Color iconColor;

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 55,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: buttonColor,
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
