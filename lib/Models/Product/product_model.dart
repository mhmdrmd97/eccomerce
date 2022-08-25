import 'package:equatable/equatable.dart';
import 'package:ecommerce/lib.dart';

class ProductModel extends Equatable {
//variables
  final String name;
  final String imgUrl;
  final String category;
  final double price;
  final bool isRecomended;
  final bool isPopular;

//constructor
  const ProductModel(
      {required this.name,
      required this.imgUrl,
      required this.category,
      required this.price,
      required this.isRecomended,
      required this.isPopular});

//methods

  @override
  List<Object?> get props =>
      [name, imgUrl, category, price, isRecomended, isPopular];

  static List<ProductModel> products = productList;
}
