import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          StringManager.khomeText1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorManager.kcolor3,
            fontSize: FontSize.kFontSize25,
          ),
        ),
        backgroundColor: Colors.transparent
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
            //SizedBox(height : HeightValue.h12),
            //CustomHomePage(),
            ],
          ),
        ),
      ),
      backgroundColor: ColorManager.kprimaryColor,
    );
  }
}
