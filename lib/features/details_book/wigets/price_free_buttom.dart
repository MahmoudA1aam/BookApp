import 'package:book_app/core/theming/colors_app.dart';
import 'package:book_app/core/theming/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceFreeButton extends StatelessWidget {
  const PriceFreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            backgroundColor: Colors.white,
            title: "19.99€",
            titleStyle: TextApp.font16BlackBold,
            borderRadiusGeometry: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(15)),
          ),
        ),
        Expanded(
          child: CustomTextButton(
            title: "Free preview",
            backgroundColor: ColorsApp.darkOrange,
            titleStyle: TextApp.font16witheBold,
            borderRadiusGeometry: BorderRadius.only(
                topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
          ),
        )
      ],
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.borderRadiusGeometry,
      required this.backgroundColor,
      required this.titleStyle,
      required this.title});

  final BorderRadiusGeometry borderRadiusGeometry;
  final Color backgroundColor;
  final String title;
  final TextStyle titleStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48.h,
        child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: backgroundColor,
                shape:
                    RoundedRectangleBorder(borderRadius: borderRadiusGeometry)),
            child: Text(
              title,
              style: titleStyle,
            )));
  }
}
