import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_list_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar1,
                  tittle: 'Muhamed Elockly',
                  subtittl: 'elocklymuhamed@gmail.co,'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListItems(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 20,
                  )),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, title: 'Setting Systems'),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      image: Assets.imagesLogout,
                      title: 'LogOut',
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
