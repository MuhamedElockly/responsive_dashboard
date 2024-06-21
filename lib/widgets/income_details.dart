import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  static const items = [
    ItemDetailModel(
        color: Color(0xff208BCD), tittle: 'Design Service', value: '20%'),
    ItemDetailModel(
        color: Color(0xff4DB7F2), tittle: 'Design Product', value: '40%'),
    ItemDetailModel(
        color: Color(0xff064060), tittle: 'Product Royality', value: '20%'),
    ItemDetailModel(color: Color(0xffE2EDCD), tittle: 'Others', value: '20%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeItem(itemDetailModel: items[index]);
      },
    );
  }
}

class IncomeItem extends StatelessWidget {
  final ItemDetailModel itemDetailModel;
  const IncomeItem({super.key, required this.itemDetailModel});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailModel.tittle,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
