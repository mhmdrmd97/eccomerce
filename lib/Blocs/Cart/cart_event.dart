import 'package:ecommerce/lib.dart';
import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class LoadCart extends CartEvent {
  const LoadCart();

  @override
  List<Object> get props => [];
}

class AddCartProduct extends CartEvent {
  final ProductModel product;
  const AddCartProduct(this.product);
  @override
  List<Object> get props => [product];
}

class RemoveCartProduct extends CartEvent {
  final ProductModel product;
  const RemoveCartProduct(this.product);
  @override
  List<Object> get props => [product];
}
