import 'package:dashboard/Core/utils/assets.dart';
import 'package:dashboard/Features/home/data/models/user_info_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({super.key});

  static const List<UserInfoModel> _users = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Ahmed Ali',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          _users.length,
          (index) {
            return IntrinsicWidth(
              child: UserInfoListTile(
                item: _users[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
