import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensess_header.dart';

class AllExpensess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpensessHeader(),
        ],
      ),
    );
  }
}
