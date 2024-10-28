import 'package:book_app/core/routing/app_router.dart';
import 'package:book_app/core/routing/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Book App",
        debugShowCheckedModeBanner: false,
        initialRoute: RouteNames.homePage,
        onGenerateRoute: AppRouter.onGeneratedRoute,
      ),
    );
  }
}
