import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resorurses/images_manager.dart';

class CustomBackgroundImage extends StatelessWidget {
const CustomBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage(ImagesManager.kOnboradingImage),
    );
  }
}
