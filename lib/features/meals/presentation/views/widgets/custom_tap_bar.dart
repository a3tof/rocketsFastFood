import 'package:flutter/material.dart';
import 'package:rockets/constants.dart';

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Image.asset('assets/images/rocket.png'),
              ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  items[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

List<String> items = [
  'العروض',
  'New Items',
  'الوجبات',
  'السندويتشات',
  'وجبات الاطفال',
  'المقبلات',
  'الحلويات',
  'السلطات',
  'المشروبات',
];
