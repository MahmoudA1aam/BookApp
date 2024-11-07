import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/text_app.dart';

class InfoBook extends StatelessWidget {
  const InfoBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text(
          "The Jungle Book",
          style: TextApp.font30WithRegular,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          "Rudyard Kipling",
          style: TextApp.font18witheGrayMedium,
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
