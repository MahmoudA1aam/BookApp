import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors_app.dart';
import '../wigets/custom_app_bar.dart';
import '../wigets/popular_books_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkBlue,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 25.w, top: 15.h),
        child:  Column(
          children: [CustomAppBar(),SizedBox(height: 40.h ,),PopularBooksListView()],
        ),
      )),
    );
  }
}
