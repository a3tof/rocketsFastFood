import 'package:flutter/material.dart';
import 'package:rockets/features/products/presentation/widgets/custom_app_bar.dart';
import 'package:rockets/features/products/presentation/widgets/custom_complete_order.dart';
import 'package:rockets/features/products/presentation/widgets/product_action.dart';
import 'package:rockets/features/products/presentation/widgets/product_details_section.dart';

class CustomProductViewBody extends StatelessWidget {
  const CustomProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ProductAppBar(),
                    SizedBox(
                      height: 10,
                    ),
                    ProductsDetailsSection(),
                    SizedBox(
                      height: 20,
                    ),
                    ProductAction(),
                    SizedBox(
                      height: 35,
                    ),
                    CustomCompleteOrder(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
