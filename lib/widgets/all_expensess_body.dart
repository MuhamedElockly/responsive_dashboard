import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_espensess_item.dart';

class AllExpensessBody extends StatefulWidget {
  AllExpensessBody({
    super.key,
  });

  @override
  State<AllExpensessBody> createState() => _AllExpensessBodyState();
}

class _AllExpensessBodyState extends State<AllExpensessBody> {
  List<AllExpensessItemModel> list = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        tittle: 'Balance',
        date: 'Junue 2024',
        price: r'$20.24'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        tittle: 'Income',
        date: 'Junue 2024',
        price: r'$20.24'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        tittle: 'Expensess',
        date: 'Junue 2024',
        price: r'$20.24'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: list.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: AllExpensessItem(
              itemModel: item,
              isSelected: selectedIndex == index,
            ),
          ),
        );
      }
    }).toList());
  }
}
