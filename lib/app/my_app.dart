import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resorurses/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteManager.routes,
      initialRoute: RoutName.konBordingPage,
    );
  }
}