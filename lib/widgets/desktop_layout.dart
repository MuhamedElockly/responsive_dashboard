import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/DotsIndicator.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/custom_dot_indicator.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/finance_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/medium_section.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: MediumSection(),
        ),
        SizedBox(
          width: 18,
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              FinanceSection(),
              SizedBox(
                height: 5,
              ),
              IncomeSection(),
            ],
          ),
        ),
        SizedBox(
          width: 8,
        )
      ],
    );
  }
}
