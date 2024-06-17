import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class QuickInvoiceListView extends StatelessWidget {
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        tittle: 'Madrani Andi',
        subtittl: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        tittle: 'Josua Nunito',
        subtittl: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        tittle: 'Josua Nunito',
        subtittl: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        tittle: 'Josua Nunito',
        subtittl: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        tittle: 'Josua Nunito',
        subtittl: 'Josh Nunito@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
  }
}
