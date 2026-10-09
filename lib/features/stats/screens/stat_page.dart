import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/color_manager.dart';
import 'package:mini_nft_app/core/resources/font_manager.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';

class StatPage extends StatelessWidget {
  const StatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.stacked_bar_chart_sharp,color:ColorManager.kgrayColor),
                  SizedBox(width: WidthValue.w4),
                  Text("Ranking",style: TextStyle(color: ColorManager.kcolor3,fontSize: FontSize.kFontSize16,fontWeight: FontWeight.w600),)
                ],
                
              ),
              SizedBox(width: WidthValue.w50,),
              Row(
                children: [
                  Icon(Icons.local_activity,color:ColorManager.kgrayColor), 
                  SizedBox(width: WidthValue.w4),
                  Text("Ranking",style: TextStyle(color: ColorManager.kgrayColor,fontSize:FontSize.kFontSize16,fontWeight: FontWeight.w600),)
                ],

              )
            ],   
          ),
          SizedBox(height: 14,),
          Container(height: .5,width: double.infinity,color: ColorManager.kcolor3,)
        ],
      ),
    );
  }
}
