import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_botton.dart';
import 'package:responsive_dashboard/widgets/tittled_text_feild.dart';

class QuickInvoiceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TittledTextFeild(
                    tittle: 'Customer Name', hint: 'Customer Name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TittledTextFeild(
                    tittle: 'Customer Email', hint: 'Customer Email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: CustomButton()),
            SizedBox(
              width: 12,
            ),
            Expanded(child: CustomButton()),
          ],
        )
      ],
    );
  }
}
