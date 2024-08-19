import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/core/utils/app_router.dart';

class CustomMealCard extends StatelessWidget {
  const CustomMealCard({
    super.key,
    required this.title,
    this.onTap,
    required this.image,
    required this.price,
  });

  final String title;
  final String price;
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      image,
                      height: 70, // Adjusted image height
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: kPrimaryColor,
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          GoRouter.of(context).push(
                            AppRouter.kProductView,
                          );
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center, // Center align the text
                        style: const TextStyle(
                          fontSize: 14, // Increased font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price,
                        textAlign: TextAlign.center, // Center align the text
                        style: const TextStyle(
                          fontSize: 14, // Increased font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
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
