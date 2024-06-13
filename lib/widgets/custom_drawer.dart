import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_list_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: UserInfoListTile(
              image: Assets.imagesAvatar1,
              tittle: 'Muhamed',
              subtitle: 'elocklymuhamed@gmail.com',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            flex: 1,
            child: DrawerListItems(),
          ),
        ],
      ),
    );
  }
}
