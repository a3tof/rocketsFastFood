import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/core/utils/app_router.dart';
import 'package:rockets/features/home/presentation/views/widgets/cutom_card.dart';

class CustomCardsContent extends StatelessWidget {
  const CustomCardsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      childAspectRatio: 1.2,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        CustomCard(
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kProductView,
            );
          },
          image: 'assets/images/happy_offers.png',
          title: 'عروض السعادة',
        ),
        CustomCard(
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kMealView,
            );
          },
          image: 'assets/images/banner.png',
          title: 'وجبات التوفير',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/new-product.png',
          title: 'New Item',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/chicken-sandwich.png',
          title: 'الوجبات الفردية',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/family.png',
          title: 'الوجبات العائلية',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/sandwich.png',
          title: 'الساندوتشات',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/chicken-sandwich.png',
          title: 'وجبات الاطفال',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/falafel hummus.png',
          title: 'المقبلات',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/sweets.png',
          title: 'الحلويات',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/salad.png',
          title: 'السلطات',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/drinks.png',
          title: 'المشروبات',
        ),
        CustomCard(
          onTap: () {},
          image: 'assets/images/rocket.png',
          title: 'روكيتس 🚀',
        ),
      ],
    );
  }
}
