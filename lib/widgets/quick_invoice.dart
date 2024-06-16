import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class QuickInvoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBockgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          SizedBox(
            height: 12,
          ),
          QuickInvoiceListView(),
        ],
      ),
    );
  }
}

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
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
