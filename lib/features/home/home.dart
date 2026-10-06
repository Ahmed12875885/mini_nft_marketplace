import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/constants.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_card_collection.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_card_seller.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_category_home_page.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_sub_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          StringManager.khomeText1,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorManager.kcolor3,
            fontSize: FontSize.kFontSize25,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(PadingValue.p16),
        child: ListView(
          children: [
            SizedBox(
              height: HeightValue.h167,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final category = Constants.categoryList[index];
                  return CustomCategoryHomePage(category: category);
                },
                separatorBuilder: (context, index) =>
                    SizedBox(width: WidthValue.w10),
                itemCount: Constants.categoryList.length,
              ),
            ),
            SizedBox(height: HeightValue.h27_5),
            CustomSubTitle(title: StringManager.khomeText12),
            SizedBox(height: HeightValue.h7),
            SizedBox(
              height: HeightValue.h194,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardCollection(
                  model: Constants.collectionList[index],
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(width: WidthValue.w10),
                itemCount: Constants.collectionList.length,
              ),
            ),
            SizedBox(height: HeightValue.h27_5),
            CustomSubTitle(title: StringManager.khomeText13),
            SizedBox(height: HeightValue.h7),
            SizedBox(
              height: HeightValue.h236,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardSeller(
                  sellermodel: Constants.sellerList[index],
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(width: WidthValue.w10),
                itemCount: Constants.sellerList.length,
              ),
            ),

            
          ],
        ),
      ),
      backgroundColor: ColorManager.kprimaryColor,
    );
  }
}
