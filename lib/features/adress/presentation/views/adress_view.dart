import 'package:flutter/material.dart';
import 'package:rockets/features/adress/presentation/views/widgets/adress_view_body.dart';

class AdressView extends StatelessWidget {
  const AdressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AdressViewBody(),
    );
  }
}
