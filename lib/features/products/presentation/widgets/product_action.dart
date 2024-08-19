import 'package:flutter/material.dart';
import 'package:rockets/features/products/presentation/widgets/custom_add_ons.dart';
import 'package:rockets/features/products/presentation/widgets/custom_meal_type.dart';

class ProductAction extends StatefulWidget {
  const ProductAction({super.key});

  @override
  State<ProductAction> createState() => _ProductActionState();
}

class _ProductActionState extends State<ProductAction> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'نوع الوجبة',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        CustomAddOns(),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'الاضافات',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        CustomMealType(),
      ],
    );
  }
}
