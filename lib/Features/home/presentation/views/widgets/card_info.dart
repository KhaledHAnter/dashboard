import 'package:dashboard/Core/utils/assets.dart';
import 'package:dashboard/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ListTile(
          title: Text(
            "Name card",
            style: Styles.styleMedium16.copyWith(
              color: Colors.white,
            ),
          ),
          subtitle: const Text(
            "Syah Bandi",
            style: Styles.styleMedium20,
          ),
          trailing: SvgPicture.asset(Assets.imagesGallery),
        ),
        const Spacer(),
        Text(
          "0918 8124 0042 8129",
          style: Styles.styleSemiBold24.copyWith(color: Colors.white),
          textAlign: TextAlign.end,
        ),
        const Gap(12),
        Text(
          "12/20  -  124",
          style: Styles.styleMedium16.copyWith(color: Colors.white),
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
