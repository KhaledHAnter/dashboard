import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/dots_indicator.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentIndex = pageController.page!.round();
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: Styles.styleSemiBold20,
        ),
        const Gap(20),
        MyCardPageView(
          pageController: pageController,
        ),
        const Gap(19),
        DotsIndicator(
          currentIndex: currentIndex,
        )
      ],
    );
  }
}
