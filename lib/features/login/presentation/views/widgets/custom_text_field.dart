import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.icon});

  final String hintText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        prefixIcon: Icon(icon),
        hintTextDirection: TextDirection.rtl,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xffb3b3b3),
          fontSize: 14,
        ),
      ),
    );
  }
}
