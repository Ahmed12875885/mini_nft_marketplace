import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/models/category_model.dart';

class CustomCategoryHomePage extends StatelessWidget {
  const CustomCategoryHomePage({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(RadiusValue.r27),
          child: Image(
            image: AssetImage(category.image),
            width: WidthValue.w252,
            height: HeightValue.h167,
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(RadiusValue.r27),
              bottomRight: Radius.circular(RadiusValue.r27),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: BlurValue.b3,
                sigmaY: BlurValue.b3,
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorManager.kimageColor.withValues(
                        alpha: OpacityValue.o0,
                      ),
                      ColorManager.kimageColor.withValues(
                        alpha: OpacityValue.o0_45,
                      ),
                    ],
                  ),
                ),
                width: WidthValue.w252,
                height: HeightValue.h52,
                child: Text(
                  category.title,
                  style: TextStyle(
                    color: ColorManager.kcolor3,
                    fontSize: FontSize.kFontSize20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
