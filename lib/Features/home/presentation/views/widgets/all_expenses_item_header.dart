import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.isActive = false});

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive
                      ? const Color(0XFFFAFAFA).withOpacity(0.1)
                      : const Color(0XFFFAFAFA),
                ),
                child: isActive
                    ? Center(
                        child: SvgPicture.asset(
                          image,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      )
                    : Center(child: SvgPicture.asset(image)),
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isActive ? Colors.white : const Color(0XFF064061),
        ),
      ],
    );
  }
}
