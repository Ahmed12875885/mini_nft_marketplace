import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/constants.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_category_home_page.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_sub_title.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custome_alpha.dart';

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
        backgroundColor: Colors.transparent,
      ),
      
      body: ListView(
        children: [
          SizedBox(
            height: HeightValue.h167,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final category = Constants.categoryList[index];
                return CustomCategoryHomePage(category: category);
              },
              separatorBuilder: (context, index) =>
                  SizedBox(width: WidthValue.w10),
              itemCount: Constants.categoryList.length,
            ),
          ),
          //2
          SizedBox(height: HeightValue.h27_5),
          CustomSubTitle(title: StringManager.khomeText12),
          //1
          SizedBox(height: HeightValue.h7),
          UnconstrainedBox(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
                    borderRadius: BorderRadius.circular(RadiusValue.r20),
                    child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
            child: Container(
              height: HeightValue.h194,
              width: WidthValue.w157,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
              decoration: BoxDecoration(
                color: ColorManager.kcolor3.withValues(alpha: CustomeAlpha.b0_1),
                borderRadius: BorderRadius.circular(RadiusValue.r20),
                border: Border.all(
                  color: ColorManager.kcolor3.withValues(alpha: CustomeAlpha.b0_1),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  
                ],
              ),
            ),
                    ),
                  ),
          ),
        
        ],
      ),
      backgroundColor: ColorManager.kprimaryColor,
    );
  }
}
