import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/DotsIndicator.dart';
import 'package:responsive_dashboard/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          currentIndex: currentPage,
        ),
      ],
    );
  }
}
