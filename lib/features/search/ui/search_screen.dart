import 'package:book_app/core/theming/colors_app.dart';
import 'package:book_app/core/theming/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/route_name.dart';
import '../../home/wigets/item_best_seller.dart';
import '../widgets/custom_search_text_filed.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkBlue,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 25.w,),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CustomSearchTextFiled(),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsets.only(left: 25.w),

            child: Text(
              "Search Result",
              style: TextApp.font18WithSemiBold,
            ),
          ),
          Expanded(
              child: Padding(
                padding:  EdgeInsets.only(left: 25.w),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(
                                    context, RouteNames.detailsBookScreen),
                            child: const ItemBestSeller()),
                      ),
                  itemCount: 10,
                ),
              ))
          ],
        ),
      ),
    ),);
  }
}
