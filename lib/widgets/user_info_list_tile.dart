import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:svg_flutter/svg.dart';

class UserInfoListTile extends StatelessWidget {
  UserInfoListTile({
    required this.image,
    required this.subtitle,
    required this.tittle,
  });
  String image, tittle, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesAvatar1),
        title: Text(
          tittle,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
