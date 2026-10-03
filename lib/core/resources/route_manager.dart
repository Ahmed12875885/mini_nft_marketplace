import 'package:flutter/material.dart';
import 'package:mini_nft_app/features/onboarding/screens/onboarding_page.dart';
import 'package:mini_nft_app/features/home/home.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RoutName.kOnboardingPage: (context) => const OnboardingPage(),
    RoutName.kHome: (context) => const HomePage(),
  };
}

class RoutName {
  static const String kOnboardingPage = "on_boarding_page";
  static const String kHome = "home";
}
