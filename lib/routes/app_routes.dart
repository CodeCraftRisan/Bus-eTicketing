import 'package:flutter/material.dart';
import 'package:bustics/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:bustics/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:bustics/presentation/login_page_screen/login_page_screen.dart';
import 'package:bustics/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomePageScreen = '/welcome_page_screen';

  static const String signupPageScreen = '/signup_page_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomePageScreen: (context) => WelcomePageScreen(),
    signupPageScreen: (context) => SignupPageScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
