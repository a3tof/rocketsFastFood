import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rockets/Core/utils/app_router.dart';

void main() {
  runApp(const RocketsApp());
}

class RocketsApp extends StatelessWidget {
  const RocketsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: GoogleFonts.notoKufiArabic().fontFamily,
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
