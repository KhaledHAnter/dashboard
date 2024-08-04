import 'package:dashboard/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0XFFF1F1F1),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: <Widget>[
          Text(
            "Monthly",
            style: Styles.styleMedium16,
          ),
          const Gap(14),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Color(0xff064061),
          ),
        ],
      ),
    );
  }
}
