import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularBooksListView extends StatelessWidget {
  const PopularBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding:  EdgeInsets.only(right: 8.w),
          child: const ItemOfPopularBooks(),
        ),
      ),
    );
  }
}

class ItemOfPopularBooks extends StatelessWidget {
  const ItemOfPopularBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 224.h,
          width: 150.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/Book 1 High.png",
                  ))),
        ),
        Padding(
          padding:  EdgeInsets.only(right: 8.w,bottom: 8.h),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.3),
            radius: 20,
            child: SvgPicture.asset("assets/image/svg_image/display_icon.svg"),
          ),
        )
      ],
    );
  }
}
