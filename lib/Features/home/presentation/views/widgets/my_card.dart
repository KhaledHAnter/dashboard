import 'package:dashboard/Core/utils/assets.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/card_info.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesCardBackground,
              ),
            ),
            color: Color(0xff4EB7F2),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: const CardInfo(),
        ),
      ),
    );
  }
}
