import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.title, required this.hint});

  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.styleSemiBold16,
        ),
        const Gap(12),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
