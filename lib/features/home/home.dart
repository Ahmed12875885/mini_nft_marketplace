import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kprimaryColor,
    );
  }
}