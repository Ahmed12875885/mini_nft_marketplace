
import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';

import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/features/home/home.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_navigation._bar.dart';
import 'package:mini_nft_app/features/stats/screens/stat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> w = [Home(), StatPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomNavigationBar(
        onPressedStates: () {
          setState(() {
            index = 1;
          });
        },
        onPressedHome: () {
          setState(() {
            index = 0;
          });
        },
      ),
      body: w[index],
      appBar:index ==0? AppBar(
        centerTitle: true,
        title: Text(
          StringManager.khomeText1 ,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorManager.kcolor3,
            fontSize: FontSize.kFontSize25,
          ),
        ),
        backgroundColor: Colors.transparent,
      ):index==1?AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: PadingValue.p16),
            child: Icon(Icons.more_horiz,color: ColorManager.kcolor3,),
          )
        ],
        centerTitle: true,
        title: Text(
          StringManager.kstatstext1 ,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: ColorManager.kcolor3,
            fontSize: FontSize.kFontSize25,
          ),
        ),
        backgroundColor: Colors.transparent,
      ):AppBar(title: Text("Null"),),
      backgroundColor: ColorManager.kprimaryColor,
    );
  }
}
