import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class FinanceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: CustomBockgroundContainer(
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              height: 20,
              color: Color(0xffF1F1F1),
            ),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
