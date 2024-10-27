import 'package:book_app/core/routing/app_router.dart';
import 'package:book_app/core/routing/route_name.dart';
import 'package:flutter/material.dart';

class BookMain extends StatelessWidget {
  const BookMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Book App",
    initialRoute: RouteNames.homePage,
    onGenerateRoute: AppRouter.onGeneratedRoute,
    );
  }
}
