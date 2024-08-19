import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rockets/core/utils/app_router.dart';
import 'package:rockets/features/meals/presentation/views/widgets/custom_grid_view.dart';
import 'package:rockets/core/widgets/custom_drawer.dart';

class MealViewBody extends StatelessWidget {
  const MealViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const CustomDrawer(),
        appBar: AppBar(
          elevation: 2,
          leadingWidth: 60,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {
                GoRouter.of(context).go(
                  AppRouter.kHomeView,
                );
              },
              child: const Icon(
                CupertinoIcons.clear_thick,
                color: Colors.black,
              ),
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
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      child: CustomMealGridView(),
                    ), // Removed SizedBox wrapping
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
