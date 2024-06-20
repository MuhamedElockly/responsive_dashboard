import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  static const items = [
    TransactionModel(
        tittle: 'Cash Withdraw',
        date: '13 April, 2022',
        amount: r'$20.129',
        isWithdraw: true),
    TransactionModel(
        tittle: 'Landing Page Project',
        date: '13 April, 2022',
        amount: r'$2000',
        isWithdraw: false),
    TransactionModel(
        tittle: 'Juni Mobile App Project',
        date: '13 April, 2022',
        amount: r'$20.129',
        isWithdraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(
          transactionModel: items[index],
        );
      },
    );
  }
}
