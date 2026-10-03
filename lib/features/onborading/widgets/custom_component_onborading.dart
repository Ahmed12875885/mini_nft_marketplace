import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resorurses/color_manager.dart';
import 'package:mini_nft_app/core/resorurses/font_manager.dart';
import 'package:mini_nft_app/core/resorurses/size_manager.dart';
import 'package:mini_nft_app/core/resorurses/string_manager.dart';
import 'package:mini_nft_app/features/onborading/widgets/custom_card.dart';
import 'package:mini_nft_app/features/onborading/widgets/custome_titel_widget.dart';

class CustomComponentOnborading extends StatelessWidget {
  const CustomComponentOnborading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: HeightValue.h70),
          CustomeTitelWidget(),
          const Spacer(),
          CustomCard(),
          const SizedBox(height: HeightValue.h70),
        ],
      ),
    );
  }
}
