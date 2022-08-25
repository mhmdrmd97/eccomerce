import 'package:equatable/equatable.dart';
import 'package:ecommerce/lib.dart';

class CategoryModel extends Equatable {
//variables
  final String name;
  final String imgUrl;

//constructor
  CategoryModel({required this.name, required this.imgUrl});

//methods

  @override
  List<Object?> get props => [name, imgUrl];

  static List<CategoryModel> categories = categoryList;
}
