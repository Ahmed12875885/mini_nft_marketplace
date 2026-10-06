import 'package:mini_nft_app/core/resources/images_manager.dart';
import 'package:mini_nft_app/core/resources/string_manager.dart';
import 'package:mini_nft_app/models/category_model.dart';
import 'package:mini_nft_app/models/collection_model.dart';
import 'package:mini_nft_app/models/seller_model.dart';

class Constants {
  static const List<CategoryModel> categoryList = [
    CategoryModel(
      title: StringManager.kimageText2,
      image: ImagesManager.khomeImage3,
    ),
    CategoryModel(
      title: StringManager.kimageText1,
      image: ImagesManager.khomeImage1,
    ),
    CategoryModel(
      title: StringManager.kimageText3,
      image: ImagesManager.khomeImage2,
    ),
  ];
  static final List<CollectionModel> collectionList = [
    CollectionModel(
      title: StringManager.khome3DArt,
      image: ImagesManager.ktrendImage1,
      active: true,
      countLike: 200,
    ),
    CollectionModel(
      title: StringManager.khomeAbstract,
      image: ImagesManager.ktrendImage2,
      active: true,
      countLike: 200,
    ),
    CollectionModel(
      title: StringManager.khomePortrait,
      image: ImagesManager.ktrendImage3,
      active: true,
      countLike: 200,
    ),
  ];

  static final List<SellerModel> sellerList = [
    SellerModel(
      title: StringManager.khomeTitel,
      image: ImagesManager.ksellerImage1,
      active: true,
      countLike: 200, title2: StringManager.khomedescription, price: 10, title3:StringManager.khomeprice,
    ),
    SellerModel(
      title: StringManager.khomeWave,
      image: ImagesManager.ksellerImage2,
      active: true,
      countLike: 200, title2:StringManager.khomewav2, price: 10, title3:StringManager.khomeprice ,
    ),
    SellerModel(
      title: StringManager.khomeWave2,
      image: ImagesManager.ksellerImage3,
      active: true,
      countLike: 200, title2:StringManager.khomewavepi , price: 10, title3:StringManager.khomeprice,
    ),
  ];
}
