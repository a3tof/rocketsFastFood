import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/core/utils/app_router.dart';
import 'package:rockets/features/sidemenu/widgets/contact_support.dart';
import 'package:rockets/features/sidemenu/widgets/info_card.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      width: 288,
      child: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/rocket.png',
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                indent: 30,
                endIndent: 30,
                color: Colors.white54,
                thickness: 3,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          InfoCard(
            title: 'الصفحة الرئيسية',
            icon: CupertinoIcons.home,
            onTap: () {
              GoRouter.of(context).go(
                AppRouter.kHomeView,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          InfoCard(
            title: 'الدخول',
            icon: CupertinoIcons.person,
            onTap: () {
              GoRouter.of(context).go(
                AppRouter.kLogin,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          InfoCard(
            title: 'العروض',
            icon: CupertinoIcons.gift,
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kOfferView,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          InfoCard(
            title: 'طلباتي',
            icon: CupertinoIcons.time,
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          InfoCard(
            title: 'عناويني',
            icon: CupertinoIcons.location,
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomContactSupport(),
        ],
      ),
    );
  }
}
