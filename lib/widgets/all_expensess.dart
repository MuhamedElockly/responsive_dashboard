import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_espensess_item.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';

class AllExpensess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItem(
            itemModel: AllExpensessItemModel(
              image: Assets.imagesIncome,
              tittle: 'Income',
              date: 'April 2024',
              price: r'$20.5',
            ),
          )
        ],
      ),
    );
  }
}
