import 'package:flutter/material.dart';
import 'package:mini_nft_app/features/onboarding/screens/onboarding_page.dart';
import 'package:mini_nft_app/features/home/home_page.dart';
import 'package:mini_nft_app/features/stats/screens/stat_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RoutName.kOnboardingPage: (context) => const OnboardingPage(),
    RoutName.kHome: (context) => const HomePage(),
    RoutName.kStats: (context) => const StatPage(),
  };
}

class RoutName {
  static const String kOnboardingPage = "on_boarding_page";
  static const String kHome = "home";
  static const String kStats = "stats";
}
