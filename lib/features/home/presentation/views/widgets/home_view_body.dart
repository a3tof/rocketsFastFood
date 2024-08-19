import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rockets/features/home/presentation/views/widgets/custom_card_content.dart';
import 'package:rockets/core/widgets/custom_drawer.dart';
import 'package:rockets/features/home/presentation/views/widgets/slider_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    SliderListView(),
                    SizedBox(height: 20),
                    SizedBox(
                      child: CustomCardsContent(),
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
