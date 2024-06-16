import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class UserInfoListTile extends StatelessWidget {
  UserInfoListTile({required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.tittle,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          userInfoModel.subtittl,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
