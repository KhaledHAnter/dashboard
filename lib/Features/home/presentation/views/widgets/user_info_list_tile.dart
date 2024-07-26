import 'package:dashboard/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});

  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: Styles.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: Styles.styleRegular12,
        ),
      ),
    );
  }
}
