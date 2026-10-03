import 'package:flutter/material.dart';
import 'package:mini_nft_app/features/onboarding/screens/onboarding_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RoutName.kOnboardingPage: (context) => const OnboardingPage(),
  };
}

class RoutName {
  static const String kOnboardingPage = "on_boarding_page";
}
