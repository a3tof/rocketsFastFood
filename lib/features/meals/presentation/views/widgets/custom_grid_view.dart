import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/core/utils/app_router.dart';
import 'package:rockets/features/meals/presentation/views/widgets/cutom_card.dart';

class CustomMealGridView extends StatelessWidget {
  const CustomMealGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(
        10,
        (index) {
          return Card(
            child: CustomMealCard(
              image: 'assets/images/rocket-text_transparent.png',
              title: 'عروض السعادة',
              price: 'السعر : 100 ج',
              onTap: () {
                GoRouter.of(context).push(
                  AppRouter.kProductView,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
