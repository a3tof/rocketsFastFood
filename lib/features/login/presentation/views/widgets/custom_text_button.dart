import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/core/utils/app_router.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 55,
      child: TextButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            color,
          ),
        ),
        onPressed: () {
          GoRouter.of(context).go(
            AppRouter.kBuyView,
          );
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            //fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
