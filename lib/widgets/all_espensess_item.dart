import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_header.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_not_selected.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item_selected.dart';

class AllExpensessItem extends StatelessWidget {
  final AllExpensessItemModel itemModel;
  bool isSelected;
  AllExpensessItem(
      {super.key, required this.isSelected, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return AllExpensessItemNotSelected(itemModel: itemModel);
    } else {
      return AllExpensessItemSelected(
        itemModel: itemModel,
      );
    }
  }
}
