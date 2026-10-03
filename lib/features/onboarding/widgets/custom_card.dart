import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/route_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custome_alpha.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
              child: Container(
                alignment: Alignment.center,
                height: HeightValue.h190,
                width: WidthValue.w300,
                decoration: BoxDecoration(
                  color: ColorManager.kcolor3.withValues(alpha: CustomeAlpha.b0_1),
                  borderRadius: BorderRadius.circular(RadiusValue.r20),
                  border: Border.all(
                    color: ColorManager.kcolor3.withValues(alpha: CustomeAlpha.b0_1),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: HeightValue.h27_5),
                    Text(
                      StringManager.kMessage,
                      style: TextStyle(
                        color: ColorManager.kcolor3,
                        fontSize: FontSize.kFontSize20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: HeightValue.h5),
                    Text(
                      textAlign: TextAlign.center,
                      StringManager.kMessage2,
                      style: TextStyle(
                        color: ColorManager.kcolor4,
                        fontSize: FontSize.kFontSize12,
                      ),
                    ),
                    SizedBox(height: HeightValue.h27_5),
                    Container(
                      width: WidthValue.w198_2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(RadiusValue.r40),
                        border: Border.all(
                          color: ColorManager.kcolor5.withValues(alpha: CustomeAlpha.b0_5),
                        ),
                        color: ColorManager.kcolor5.withValues(alpha: CustomeAlpha.b0_5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(RadiusValue.r40),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: BlurValue.b15, sigmaY: BlurValue.b15),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(context, RoutName.kHome);
                            },
                            child: Text(StringManager.kbutton2,style: TextStyle(
                              color: ColorManager.kcolor3,
                              fontSize: FontSize.kFontSize16,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}