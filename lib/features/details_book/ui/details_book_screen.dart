import 'package:book_app/core/theming/text_app.dart';
import 'package:book_app/features/details_book/wigets/info_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors_app.dart';
import '../wigets/price_free_buttom.dart';
import '../wigets/you_can_also_like_list_view.dart';

class DetailsBookScreen extends StatelessWidget {
  const DetailsBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkBlue,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, bottom: 35.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 243.h,
                width: 162.w,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/image/Book 1 High.png",
                        )),
                    borderRadius: BorderRadius.circular(20)),
              ),
              InfoBook(),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w),
                child: PriceFreeButton(),
              ),
              Expanded(
                child: SizedBox(
                  height: 35.h,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "You can also like",
                    style: TextApp.font18WithSemiBold,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              YouCanAlsoLikeListView()
            ],
          ),
        ),
      ),
    );
  }
}
