import 'package:flutter/material.dart';
import 'package:rockets/features/meals/presentation/views/widgets/meal_view_body.dart';

class MealView extends StatelessWidget {
  const MealView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MealViewBody(),
    );
  }
}
