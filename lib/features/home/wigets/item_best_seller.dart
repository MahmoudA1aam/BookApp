import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/text_app.dart';

class ItemBestSeller extends StatelessWidget {
  const ItemBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 105.h,
            width: 70.w,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage("assets/image/Book 1 High.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 30.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    style: TextApp.font20WithRegular,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Text(
                  "J.K. Rowling",
                  style: TextApp.font14witheGrayMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 €",
                      style: TextApp.font18WithSemiBold,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                            "assets/image/svg_image/icon_Star.svg"),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "4.8",
                          style: TextApp.font16witheMedium,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "(2390)",
                          style: TextApp.font14witheGrayRegular,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
