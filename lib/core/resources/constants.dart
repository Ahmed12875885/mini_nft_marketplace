import 'package:mini_nft_app/core/resources/images_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/models/category_model.dart';

class Constants {
  static const List<CategoryModel> categoryList = [
    CategoryModel(title: StringManager.kimageText2, image: ImagesManager.khomeImage3),
    CategoryModel(title: StringManager.kimageText1, image: ImagesManager.khomeImage1),
    CategoryModel(title: StringManager.kimageText3, image: ImagesManager.khomeImage2),
    
    
  ];
}