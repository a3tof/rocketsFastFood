import 'package:flutter/material.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/features/products/presentation/widgets/meal_type_item.dart';

class CustomMealType extends StatefulWidget {
  const CustomMealType({super.key});

  @override
  State<CustomMealType> createState() => _CustomMealTypeState();
}

class _CustomMealTypeState extends State<CustomMealType> {
  int currentIndex = 2;

  get colors => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: kMealType.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: MealTypeItem(
                        title: kMealType[index],
                        color: kPrimaryColor,
                        isActive: currentIndex == index,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
