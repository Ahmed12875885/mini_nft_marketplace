
import 'package:flutter/material.dart';
import 'package:mini_nft_app/core/resources/size_manager.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_card.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custome_titel_widget.dart';

class CustomComponentOnboarding extends StatelessWidget {
  const CustomComponentOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: HeightValue.h70),
          CustomeTitelWidget(),
          const Spacer(),
          CustomCard(),
          const SizedBox(height: HeightValue.h70),
        ],
      ),
    );
  }
}
