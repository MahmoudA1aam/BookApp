import 'package:book_app/core/routing/route_name.dart';
import 'package:book_app/core/theming/text_app.dart';
import 'package:book_app/features/home/wigets/item_best_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, RouteNames.detailsBookScreen),
            child: const ItemBestSeller()),
      ),
      itemCount: 5,
    ));
  }
}
