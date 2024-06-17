import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_text_feild.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class QuickInvoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBockgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          SizedBox(
            height: 12,
          ),
          QuickInvoiceListView(),
          Divider(
            height: 48,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
