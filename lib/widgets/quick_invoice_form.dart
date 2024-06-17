import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_botton.dart';
import 'package:responsive_dashboard/widgets/tittled_text_feild.dart';

class QuickInvoiceForm extends StatelessWidget {
  static const items = [
    TittledTextFeild(tittle: 'Customer Name', hint: 'Customer Name'),
    TittledTextFeild(tittle: 'Customer Name', hint: 'Customer Name'),
    TittledTextFeild(tittle: 'Customer Name', hint: 'Customer Name'),
    TittledTextFeild(tittle: 'Customer Name', hint: 'Customer Name'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IntrinsicWidth(
              stepWidth: 400,
              child: TittledTextFeild(
                  tittle: 'Customer Name', hint: 'Customer Name')),
          SizedBox(
            width: 12,
          ),
          IntrinsicWidth(
              stepWidth: 400,
              child: TittledTextFeild(
                  tittle: 'Customer Name', hint: 'Customer Name')),
          SizedBox(
            width: 12,
          ),
          IntrinsicWidth(
              stepWidth: 400,
              child: TittledTextFeild(
                  tittle: 'Customer Name', hint: 'Customer Name')),
          SizedBox(
            width: 12,
          ),
          IntrinsicWidth(
              stepWidth: 400,
              child: TittledTextFeild(
                  tittle: 'Customer Name', hint: 'Customer Name')),
        ],
      ),
    );

    // Column(
    //   children: [
    //     Row(
    //       children: [
    //         Expanded(
    //             child: TittledTextFeild(
    //                 tittle: 'Customer Name', hint: 'Customer Name')),
    //         SizedBox(
    //           width: 16,
    //         ),
    //         Expanded(
    //             child: TittledTextFeild(
    //                 tittle: 'Customer Email', hint: 'Customer Email')),
    //       ],
    //     ),
    //     SizedBox(
    //       height: 24,
    //     ),
    //     Row(
    //       children: [
    //         Expanded(
    //             child: CustomButton(
    //           text: 'Add More Detail',
    //         )),
    //         SizedBox(
    //           width: 24,
    //         ),
    //         Expanded(
    //             child: CustomButton(
    //           text: 'Send Money',
    //           backgroundColor: Color(0xFF4DB7F2),
    //           backgroundTextColor: Colors.white,
    //         )),
    //       ],
    //     )
    //   ],
    // );
  }
}
