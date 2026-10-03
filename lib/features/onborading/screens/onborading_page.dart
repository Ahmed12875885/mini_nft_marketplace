import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resorurses/color_manager.dart';
import 'package:mini_nft_app/core/resorurses/font_manager.dart';
import 'package:mini_nft_app/core/resorurses/images_manager.dart';
import 'package:mini_nft_app/core/resorurses/string_manager.dart';
import 'package:mini_nft_app/features/onborading/widgets/custom_background_image.dart';
import 'package:mini_nft_app/features/onborading/widgets/custom_component_onborading.dart';

class OnboradingPage extends StatelessWidget {
  const OnboradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomBackgroundImage(),
            CustomComponentOnborading(),
          ]
        ),
      ),
    );
  }
}
