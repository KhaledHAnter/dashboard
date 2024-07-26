import 'package:dashboard/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Text(
          "Quick Invoice",
          style: Styles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFAFAFA),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Color(0xFF4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}
