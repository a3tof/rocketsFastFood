import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/constants.dart';
import 'package:rockets/core/utils/app_router.dart';
import 'package:rockets/core/widgets/custom_drawer.dart';
import 'package:rockets/features/login/presentation/views/widgets/custom_text_button.dart';

class BuyDetailsViewBody extends StatelessWidget {
  const BuyDetailsViewBody({super.key});

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
            Builder(
              builder: (context) {
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
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const SizedBox(width: 16),
                Image.asset(
                  'assets/images/rocket.png',
                  width: 120,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'عروض السعادة',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'السعر : 100 جنيه',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'الكمية : 1',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              'الدليفري : 20 جنيه',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'نوي - القليوبية - مصر',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'أضف عنونا أخر',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 30,
                  child: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {
                        GoRouter.of(context).push(
                          AppRouter.kOrderView,
                        );
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const CustomTextButton(
                text: 'الدفع عند الاستلام', color: kPrimaryColor),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: CustomTextButton(
                  text: 'الدفع ب Visa / Master Card', color: kPrimaryColor),
            ),
            const CustomTextButton(text: 'أكمل الطلب', color: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}
