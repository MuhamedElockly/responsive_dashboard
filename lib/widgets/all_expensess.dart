import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_espensess_item.dart';
import 'package:responsive_dashboard/widgets/all_expensess_body.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBockgroundContainer(
      padding: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AllExpensessHeader(header: 'All Expensess',),
          SizedBox(
            height: 16,
          ),
          AllExpensessBody()
        ],
      ),
    );
  }
}
