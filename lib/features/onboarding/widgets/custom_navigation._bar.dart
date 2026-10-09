import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';

import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custome_alpha.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.onPressedStates,
    required this.onPressedHome,
  });
  final VoidCallback onPressedStates;
  final VoidCallback onPressedHome;
  @override
  Widget build(BuildContext context) {
double w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 122,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: w,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(RadiusValue.r40),
                  topRight: Radius.circular(RadiusValue.r40),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: BlurValue.b10,
                    sigmaY: BlurValue.b10,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: HeightValue.h90,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: onPressedHome,
                          icon: Icon(
                            Icons.home,
                            color: ColorManager.kcolor3,
                            size: SizeValue.s39,
                          ),
                        ),
                      
                        IconButton(
                          onPressed: onPressedStates,
                          icon: Icon(
                            Icons.stacked_bar_chart,
                            color: ColorManager.kcolor3,
                            size: SizeValue.s39,
                          ),
                        ),

                        SizedBox(width: WidthValue.w39),
                        Icon(
                          Icons.search,
                          color: ColorManager.kcolor3,
                          size: SizeValue.s39,
                        ),
                        Icon(
                          Icons.person,
                          color: ColorManager.kcolor3,
                          size: SizeValue.s39,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 0,
            child: Container(
              width: WidthValue.w70,
              height: HeightValue.h70,
              decoration: ShapeDecoration(
                shape: StarBorder.polygon(sides: 6, pointRounding: 0.5),
                color: ColorManager.kcolor4.withValues(alpha: OpacityValue.o0_85),
              ),
              child: Icon(Icons.add, size: 40, color: ColorManager.kcolor3),
            ),
          ),
        ],
      ),
    );
  }
}
