import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resorurses/color_manager.dart';
import 'package:mini_nft_app/core/resorurses/font_manager.dart';
import 'package:mini_nft_app/core/resorurses/string_manager.dart';

class CustomeTitelWidget extends StatelessWidget {
  const CustomeTitelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
            StringManager.kWelcomeMessage,
            style: TextStyle(
              color: ColorManager.kcolor3,
              fontSize: FontSize.kFontSize36,
              fontWeight: FontWeight.bold,
            ),
          );
  }
}