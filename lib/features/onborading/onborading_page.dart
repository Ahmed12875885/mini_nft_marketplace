import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resorurses/color_manager.dart';
import 'package:mini_nft_app/core/resorurses/font_manager.dart';
import 'package:mini_nft_app/core/resorurses/images_manager.dart';
import 'package:mini_nft_app/core/resorurses/string_manager.dart';

class OnboradingPage extends StatelessWidget {
  const OnboradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(ImagesManager.kOnboradingImage),
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  const Text(
                    StringManager.kWelcomeMessage,
                    style: TextStyle(
                      color: ColorManager.kcolor3,
                      fontSize: FontSize.kFontSize14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const Spacer(),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        height: 190,
                        width: 300,
                        decoration: BoxDecoration(
                          color: ColorManager.kcolor3.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                ],
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
