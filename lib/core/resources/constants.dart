import 'package:mini_nft_app/core/resources/images_manager.dart';
import 'package:mini_nft_app/models/category_model.dart';

class Constants {
  static const List<CategoryModel> categoryList = [
    
    CategoryModel(title: 'Music', image: ImagesManager.khomeImage2),
    CategoryModel(title: 'Art', image: ImagesManager.khomeImage1),
    CategoryModel(title: 'Virtual Worlds', image: ImagesManager.khomeImage3),
  ];
}