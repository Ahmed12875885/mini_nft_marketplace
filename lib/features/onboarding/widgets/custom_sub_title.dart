import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
            
            alignment: AlignmentDirectional.centerStart,
            
            child: Padding(

              padding: const EdgeInsets.symmetric(horizontal: WidthValue.w14),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorManager.kcolor3,
                  fontSize: FontSize.kFontSize18,
                  
                ),
                
              ),
            ),
          );
  }
}