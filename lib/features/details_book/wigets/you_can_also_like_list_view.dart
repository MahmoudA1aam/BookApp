import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YouCanAlsoLikeListView extends StatelessWidget {
  const YouCanAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: const ItemYouCanAlsoLike(),
        ),
        itemCount: 5,
      ),
    );
  }
}

class ItemYouCanAlsoLike extends StatelessWidget {
  const ItemYouCanAlsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.h,
      width: 70.w,
      decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/image/Book 1 High.png",
              )),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
