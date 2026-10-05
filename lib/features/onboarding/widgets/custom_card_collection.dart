import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/images_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custome_alpha.dart';

class CustomCardCollection extends StatelessWidget {
  const CustomCardCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(RadiusValue.r20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: BlurValue.b10,
                  sigmaY: BlurValue.b10,
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: HeightValue.h194,
                  width: WidthValue.w157,
                  padding: EdgeInsets.all(HeightValue.h9),
                  decoration: BoxDecoration(
                    color: ColorManager.kcolor3.withValues(
                      alpha: CustomeAlpha.b0_1,
                    ),
                    borderRadius: BorderRadius.circular(RadiusValue.r20),
                    border: Border.all(
                      color: ColorManager.kcolor3.withValues(
                        alpha: CustomeAlpha.b0_1,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: AssetImage(ImagesManager.ktrendImage1),
                        height: HeightValue.h139,
                        width: WidthValue.w139,
                      ),
                      SizedBox(height: HeightValue.h9),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringManager.khome3DArt,
                            style: TextStyle(
                              color: ColorManager.kcolor3,
                              fontSize: FontSize.kFontSize12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: ColorManager.kredColor,
                              ),
                              Text(
                                StringManager.khomeText200,
                                style: TextStyle(
                                  color: ColorManager.kcolor3,
                                  fontSize: FontSize.kFontSize12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  //
                ),
              ),
            ),
          );
  }
}