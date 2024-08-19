import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    this.onTap,
    required this.image,
  });

  final String title;
  final void Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16), // Adjusted padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      image,
                      height: 70, // Adjusted image height
                    ),
                  ],
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center, // Center align the text
                style: const TextStyle(
                  fontSize: 18, // Increased font size
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
