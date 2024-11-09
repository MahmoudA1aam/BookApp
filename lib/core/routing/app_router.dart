import 'package:book_app/core/routing/route_name.dart';
import 'package:book_app/features/details_book/ui/details_book_screen.dart';
import 'package:book_app/features/search/ui/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/home/ui/home_screen.dart';

class AppRouter {
  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homePage:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case RouteNames.detailsBookScreen:
        return MaterialPageRoute(
          builder: (context) => DetailsBookScreen(),
        );
      case RouteNames.searchScreen:
        return MaterialPageRoute(
          builder: (context) => SearchScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defined for${settings.name}"),
            ),
          ),
        );
    }
  }
}
