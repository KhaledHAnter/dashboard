import 'package:dashboard/Core/utils/styles.dart';
import 'package:dashboard/Features/home/data/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.item,
  });

  final UserInfoModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(item.image),
          title: Text(
            item.title,
            style: Styles.styleSemiBold16,
          ),
          subtitle: Text(
            item.subTitle,
            style: Styles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
