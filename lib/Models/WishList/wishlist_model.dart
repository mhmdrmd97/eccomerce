import 'package:equatable/equatable.dart';
import 'package:ecommerce/lib.dart';

class WishListModel extends Equatable {
//variables
  final List<ProductModel> products;


//constructor
 const WishListModel(
      { this.products= const <ProductModel>[],
     });

//methods

  @override
  List<Object?> get props =>
      [products,];
}
