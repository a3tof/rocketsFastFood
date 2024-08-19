import 'package:flutter/material.dart';

class MealTypeItem extends StatelessWidget {
  const MealTypeItem(
      {super.key,
      required this.isActive,
      required this.color,
      required this.title});

  final bool isActive;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: color,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          );
  }
}
