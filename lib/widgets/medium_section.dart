
import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class MediumSection extends StatelessWidget {
  const MediumSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        AllExpensess(),
        SizedBox(
          height: 12,
        ),
        QuickInvoice(),
      ],
    );
  }
}
