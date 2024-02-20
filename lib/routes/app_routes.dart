import 'package:flutter/material.dart';
import 'package:coin/presentation/visual_search_screen/visual_search_screen.dart';
import 'package:coin/presentation/splash_screen/splash_screen.dart';
import 'package:coin/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String visualSearchScreen = '/visual_search_screen';

  static const String splashScreen = '/splash_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    visualSearchScreen: (context) => VisualSearchScreen(),
    splashScreen: (context) => SplashScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
