import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resorurses/color_manager.dart';
import 'package:mini_nft_app/core/resorurses/font_manager.dart';
import 'package:mini_nft_app/core/resorurses/images_manager.dart';
import 'package:mini_nft_app/core/resorurses/string_manager.dart';

class OnboradingPage extends StatelessWidget {
  const OnboradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
          child:Stack(
            children:[
              Image(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage(ImagesManager.kOnboradingImage))
              ,
              Container(
                width: double.infinity,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                SizedBox(height: 50,),
                Text(
                  StringManager.kWelcomeMessage,
                  style: TextStyle(
                    color: ColorManager.kcolor3,
                    fontSize: FontSize.kFontSize14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                Spacer(),
                
                Text(
                  StringManager.kWelcomeMessage,
                  style: TextStyle(
                    color: ColorManager.kcolor3,
                    fontSize: FontSize.kFontSize14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                            ],
                          ),
              ),
            ]
          ) 
        ),

    );
  }
}
