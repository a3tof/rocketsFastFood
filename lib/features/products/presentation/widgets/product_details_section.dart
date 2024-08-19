import 'package:flutter/material.dart';

class ProductsDetailsSection extends StatelessWidget {
  const ProductsDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Text(
          'ساندويتش الدجاج',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'ساندويتش الدجاج اللذيذ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/images/banner.png',
          width: width * .9,
        ),
      ],
    );
  }
}
