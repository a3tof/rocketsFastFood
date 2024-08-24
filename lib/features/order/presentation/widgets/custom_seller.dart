import 'package:flutter/material.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_button.dart';
import 'package:rockets/features/order/presentation/widgets/counter_widget.dart';

class CutomSeller extends StatelessWidget {
  const CutomSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CounterWidget(),
        SizedBox(
          width: 200,
          child: CustomTextButton(text: 'أضف الي الطلب', color: kPrimaryColor),
        ),
      ],
    );
  }
}
