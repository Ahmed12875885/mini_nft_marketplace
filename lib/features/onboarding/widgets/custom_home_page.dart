import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';

class CustomHomePage extends StatelessWidget {
  const CustomHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
                
                StringManager.khomeText1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorManager.kcolor3,
                  fontSize: FontSize.kFontSize25,
                ),
              );
  }
}