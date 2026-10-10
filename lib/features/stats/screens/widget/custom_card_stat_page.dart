import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/images_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/models/table_row_modle.dart';

class CustomCardStatPage extends StatelessWidget {
  const CustomCardStatPage({super.key, required this.tableRowModle});
  final TableRowModle tableRowModle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PadingValue.p16),
      child: Row(
        children: [
          Text("${tableRowModle.number}", style: TextStyle(color: ColorManager.kcolor3)),
          SizedBox(width: WidthValue.w9),
          ClipRRect(
            borderRadius: BorderRadius.circular(RadiusValue.r10),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(ImagesManager.khomeImage1),
              width: WidthValue.w39,
              height: HeightValue.h39,
            ),
          ),
          SizedBox(width: WidthValue.w13),
          SizedBox(
            width: WidthValue.w115,
            height: HeightValue.h39,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringManager.kAzumitext,
                  style: TextStyle(
                    color: ColorManager.kcolor3,
                    fontSize: FontSize.kFontSize15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  StringManager.kviewinfotext,
                  style: TextStyle(
                    color: ColorManager.kgrayColor,
                    fontSize: FontSize.kFontSize11,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: WidthValue.w16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.currency_bitcoin,
                    color: ColorManager.kcolor3,
                    size: FontSize.kFontSize20,
                  ),
                  Text(
                    StringManager.kstatstext5,
                    style: TextStyle(color: ColorManager.kcolor3),
                  ),
                ],
              ),
              Text(
                StringManager.kstatstext4,
                style: TextStyle(color: ColorManager.kgreencolor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
