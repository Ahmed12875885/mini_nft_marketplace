// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mini_nft_app/app/my_app.dart';
import 'package:mini_nft_app/core/resources/constants.dart';
import 'package:mini_nft_app/features/home/home.dart';
import 'package:mini_nft_app/features/onboarding/widgets/custom_category_home_page.dart';

void main() {
  testWidgets('opens onboarding and navigates to home', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());

    expect(find.text('Welcome to \n NFT Marketplace'), findsOneWidget);
    expect(find.text('Get Started now'), findsOneWidget);

    await tester.tap(find.text('Get Started now'));
    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);
  });

  testWidgets('displays each category with its own name and image', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(900, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    final categoryCards = tester.widgetList<CustomCategoryHomePage>(
      find.byType(CustomCategoryHomePage),
    );
    expect(categoryCards.length, Constants.categoryList.length);

    for (var index = 0; index < Constants.categoryList.length; index++) {
      final category = Constants.categoryList[index];
      final card = categoryCards.elementAt(index);

      expect(card.category.title, category.title);
      expect(card.category.image, category.image);
      expect(find.text(category.title), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Image &&
              widget.image is AssetImage &&
              (widget.image as AssetImage).assetName == category.image,
        ),
        findsOneWidget,
      );
    }
  });
}
