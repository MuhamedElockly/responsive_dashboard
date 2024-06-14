import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_header.dart';

class AllExpensessItem extends StatelessWidget {
  final AllExpensessItemModel itemModel;

  const AllExpensessItem({super.key, required this.itemModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        children: [
          AllExpensessItemHeader(image: itemModel.image),
          SizedBox(
            height: 34,
          ),
          Text(
            
            itemModel.tittle,
            style: AppStyles.styleSemiBold16(context),
          ),
        ],
      ),
    );
  }
}
