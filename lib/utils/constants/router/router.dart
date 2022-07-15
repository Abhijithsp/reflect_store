import 'package:flutter/material.dart';
import 'package:reflect/core/features/authentication/screens/auth_screen.dart';
import 'package:reflect/core/features/splash_screen/splash_screen.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(
          settings: settings, builder: (context) => const SplashScreen());
    case SignInScreen.signinPage:
      return MaterialPageRoute(
          settings: settings, builder: (context) => const SignInScreen());
  }
}
