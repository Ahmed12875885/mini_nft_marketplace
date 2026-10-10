import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.title, required this.icondata});
  final String title;
  final IconData icondata;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      width: WidthValue.w155,
      height: HeightValue.h50,
      decoration: BoxDecoration(
        color: ColorManager.kcolor7.withOpacity(OpacityValue.o0_1),
        borderRadius: BorderRadius.circular(RadiusValue.r40),
        border: Border.all(color: ColorManager.kcolor2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icondata, color: ColorManager.kgrayColor),
          Text("All categories", style: TextStyle(color: ColorManager.kcolor3)),
          Icon(Icons.keyboard_arrow_down, color: ColorManager.kgrayColor),
        ],
      ),
    );
  }
}
