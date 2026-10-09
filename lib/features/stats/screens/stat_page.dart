import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';

class StatPage extends StatelessWidget {
  const StatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //padding: EdgeInsets.all(PadingValue.p16),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.stacked_bar_chart_sharp,
                        color: ColorManager.kgrayColor,
                      ),
                      SizedBox(width: WidthValue.w4),
                      Text(
                        "Ranking",
                        style: TextStyle(
                          color: ColorManager.kcolor3,
                          fontSize: FontSize.kFontSize16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorManager.kcolor6,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, -5),

                          color: ColorManager.kcolor6,
                          blurRadius: 16,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    width: 106,
                    height: 3,
                  ),
                ],
              ),
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.local_activity, color: ColorManager.kgrayColor),
                SizedBox(width: WidthValue.w4),
                Text(
                  "Ranking",
                  style: TextStyle(
                    color: ColorManager.kgrayColor,
                    fontSize: FontSize.kFontSize16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),

        Container(
          //padding: EdgeInsets.only(bottom: PadingValue.p16),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: ColorManager.kcolor7)),
          ),
        ),
      ],
    );
  }
}
