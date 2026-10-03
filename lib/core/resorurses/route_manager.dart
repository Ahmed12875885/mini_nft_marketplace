import 'package:flutter/material.dart';
import 'package:mini_nft_app/features/onborading/screens/onborading_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    RoutName.konBordingPage: (context) => const OnboradingPage(),
  };
}
class RoutName{
  static const String konBordingPage = "on_bording_page";
}
