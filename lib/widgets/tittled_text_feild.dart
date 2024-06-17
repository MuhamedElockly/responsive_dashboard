import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_text_feild.dart';

class TittledTextFeild extends StatelessWidget {
  final String tittle, hint;

  const TittledTextFeild({super.key, required this.tittle, required this.hint});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tittle,
          style: AppStyles.styleMedium16(context),
        ),
        SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
