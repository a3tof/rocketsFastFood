import 'package:flutter/material.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_button.dart';
import 'package:rockets/features/products/presentation/widgets/counter_widget.dart';

class CustomCompleteOrder extends StatelessWidget {
  const CustomCompleteOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'جنيه ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //   color: kPrimaryColor,
              ),
            ),
            Text(
              '100',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //   color: kPrimaryColor,
              ),
            ),
            Text(
              ' : السعر',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                //   color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CounterWidget(),
            SizedBox(
              width: 150,
              child: CustomTextButton(
                text: 'اكمل الطلب',
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
