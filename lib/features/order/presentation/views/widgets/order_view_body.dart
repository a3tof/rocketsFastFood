import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/core/widgets/custom_drawer.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_button.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_field.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const CustomDrawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 120,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset(
              'assets/images/rocket-text_transparent.png',
              height: 100,
              width: 100,
            ),
          ),
          actions: [
            Builder(builder: (context) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Icon(
                  CupertinoIcons.bars,
                  color: Colors.black,
                  size: 30,
                ),
              );
            }),
          ],
        ),
        body: const Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.only(top: 16, right: 16, left: 16),
            child: Column(
              children: [
                Text(
                  'العناوين',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                SizedBox(height: 20),
                CustomTextField(hintText: 'الاسم كامل', icon: Icons.person),
                SizedBox(height: 20),
                CustomTextField(hintText: 'رقم الهاتف', icon: Icons.phone),
                SizedBox(height: 20),
                CustomTextField(hintText: 'المحافطة', icon: Icons.location_on),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                          hintText: 'المدينة', icon: Icons.location_city),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomTextField(
                          hintText: 'المنطقة', icon: Icons.location_on),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                          hintText: 'رقم الشقة', icon: Icons.house),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomTextField(
                          hintText: 'رقم المبني', icon: Icons.roofing),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomTextField(
                    hintText: 'الشارع / علامة مميزة', icon: Icons.streetview),
                SizedBox(height: 200),
                SizedBox(
                  width: double.infinity,
                  child: CustomTextButton(
                    text: 'حفظ العنوان',
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
