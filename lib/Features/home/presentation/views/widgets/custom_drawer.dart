import 'package:dashboard/Core/utils/assets.dart';
import 'package:dashboard/Features/home/data/models/drawer_item_model.dart';
import 'package:dashboard/Features/home/data/models/user_info_model.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/active_inactive_items.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/drawer_list_view.dart';
import 'package:dashboard/Features/home/presentation/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8, // 80%
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              item: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: "Khaled H. Anter",
                  subTitle: "khaldntr11@gmail.com"),
            ),
          ),
          const SliverToBoxAdapter(child: Gap(8)),
          const DrawerListView(),
          // const Expanded(child: SizedBox()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  const Spacer(),
                  InActiveDrawerItem(
                    item: DrawerItemModel(
                        title: "Setting system", image: Assets.imagesSetting),
                  ),
                  InActiveDrawerItem(
                    item: DrawerItemModel(
                        title: "Logout account", image: Assets.imagesLogout),
                  ),
                  const Gap(48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
