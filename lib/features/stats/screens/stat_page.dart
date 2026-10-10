import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custome_alpha.dart';
import 'package:mini_nft_app/features/stats/screens/widget/custom_card_stat_page.dart';

import 'package:mini_nft_app/features/stats/screens/widget/custom_category.dart';
import 'package:mini_nft_app/features/stats/screens/widget/custom_sub_title_stat_page.dart';
import 'package:mini_nft_app/models/table_row_modle.dart';

class StatPage extends StatelessWidget {
  const StatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double listHeight = MediaQuery.of(context).size.height-200;
    print(listHeight);
    return Column(
      children: [
        SizedBox(height: HeightValue.h16),
        CustomSubTitleStatPage(),
        SizedBox(height: HeightValue.h27_5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCategory(
              title: StringManager.kstatstext2,
              icondata: Icons.border_all_rounded,
            ),
            CustomCategory(
              title: StringManager.kstatstext3,
              icondata: Icons.link,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: PadingValue.p27,
            horizontal: PadingValue.p14,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(RadiusValue.r20),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: BlurValue.b10,
                sigmaY: BlurValue.b10,
              ),
              child: Container(
                height: 500,
                alignment: Alignment.center,
                
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
                child: ListView.separated(
                  itemBuilder: (context, index) => CustomCardStatPage(tableRowModle: TableRowModle(number: index+1),),
                  separatorBuilder: (context, index) =>
                      SizedBox(height: HeightValue.h9),
                  itemCount: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
