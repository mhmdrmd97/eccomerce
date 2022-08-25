import 'package:ecommerce/lib.dart';
import 'package:equatable/equatable.dart';

abstract class WishListEvent extends Equatable {
 const WishListEvent();

  @override
  List<Object?> get props => [];
}

class StartWishList extends WishListEvent{}
class AddWishListProduct extends WishListEvent{
  
  final ProductModel product;
AddWishListProduct(this.product);


  @override
  List<Object?> get props => [product];
}
class RemoveWishListProduct extends WishListEvent{
  
  final ProductModel product;
RemoveWishListProduct(this.product);


  @override
  List<Object?> get props => [product];
}