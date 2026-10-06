import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custome_alpha.dart';
import 'package:mini_nft_app/models/seller_model.dart';

class CustomCardSeller extends StatelessWidget {
  const CustomCardSeller({super.key, required this.sellermodel});
  final SellerModel sellermodel;
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
            height: HeightValue.h236,
            width: WidthValue.w157,
            padding: EdgeInsets.all(HeightValue.h9),

            decoration: BoxDecoration(
              color: ColorManager.kcolor3.withValues(alpha: CustomeAlpha.b0_1),
              borderRadius: BorderRadius.circular(RadiusValue.r20),
              border: Border.all(
                color: ColorManager.kcolor3.withValues(
                  alpha: CustomeAlpha.b0_1,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  
                  borderRadius: BorderRadius.circular(RadiusValue.r20),
                  child: Image(
                    image: AssetImage(sellermodel.image),
                    height: HeightValue.h139,
                    width:WidthValue.w139,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: HeightValue.h9),
                Text(sellermodel.title,style:TextStyle(color: ColorManager.kcolor3,fontSize: FontSize.kFontSize12,fontWeight:FontWeight.w600 ),),
                Text(sellermodel.title2,style : TextStyle(color: ColorManager.kcolor4,fontSize: FontSize.kFontSize10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(sellermodel.title3,style:TextStyle(color: ColorManager.kcolor3)),
                  Row(children: [Icon(
                          Icons.favorite,
                          size: 11,
                          color:
                              sellermodel.active
                                  ? ColorManager.kredColor
                                  : ColorManager.kcolor3,
                        ),
                        SizedBox(width: WidthValue.w4),
                        Text(StringManager.khomeText200,style:TextStyle(color:ColorManager.kcolor4)),],)
                    
                  ],
                )
              ],
            ),
            //
          ),
        ),
      ),
    );
    
  }
}
