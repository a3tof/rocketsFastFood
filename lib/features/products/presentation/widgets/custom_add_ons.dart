import 'package:flutter/material.dart';
import 'package:rockets/constants.dart';

class AddOnsItem extends StatelessWidget {
  const AddOnsItem(
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
            radius: 31,
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

class CustomAddOns extends StatefulWidget {
  const CustomAddOns({super.key});

  @override
  State<CustomAddOns> createState() => _CustomAddOnsState();
}

class _CustomAddOnsState extends State<CustomAddOns> {
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
                itemCount: kAddons.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: AddOnsItem(
                        title: kAddons[index],
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
