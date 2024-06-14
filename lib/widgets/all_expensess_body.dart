import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_espensess_item.dart';

class AllExpensessBody extends StatelessWidget {
  AllExpensessBody({
    super.key,
  });
  List<AllExpensessItem> list = [
    AllExpensessItem(
      itemModel: AllExpensessItemModel(
          image: Assets.imagesIncome,
          tittle: 'Balance',
          date: 'Junue 2024',
          price: r'$20.24'),
    ),
    AllExpensessItem(
      itemModel: AllExpensessItemModel(
          image: Assets.imagesIncome,
          tittle: 'Income',
          date: 'Junue 2024',
          price: r'$20.24'),
    ),
    AllExpensessItem(
      itemModel: AllExpensessItemModel(
          image: Assets.imagesIncome,
          tittle: 'Expensess',
          date: 'Junue 2024',
          price: r'$20.24'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Expanded(child: list[index]);
      },
    );
  }
}
