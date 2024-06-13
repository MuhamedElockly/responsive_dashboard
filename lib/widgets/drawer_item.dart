import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({required this.drawerItemModel});
  DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}
