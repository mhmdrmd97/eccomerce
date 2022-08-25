import 'package:equatable/equatable.dart';
import 'package:ecommerce/lib.dart';

class CartModel extends Equatable {


  final List<ProductModel> products;
  const  CartModel({ this.products= const <ProductModel>[]});


  Map productQuantity(products){
    var quantity = Map();
    products.forEach((product){
      if(!quantity.containsKey(product))
      { quantity[product] = 1;}
      else{
        quantity[product] += 1;
      }
    });
    return quantity;

  }

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deleviryFee(subtotal) {
    if (subtotal > 30.0)
      return 0.0;
    else
      return 10.0;
  }

  String toFreeDelivery(subtotal) {
    if (subtotal > 30.0)
      return 'u have free delivery';
    else {
      double missing = 30.0 - subtotal;
      return '\$${missing.toStringAsFixed(2)} for Free Delivery';
    }
  }

  double total(subtotal, deleviryFee) {
    return subtotal + deleviryFee(subtotal);
  }



  String get subtotal_string => subtotal.toStringAsFixed(2);
  String get total_string => total(subtotal,deleviryFee).toStringAsFixed(2);
  String get deliveryFee_string => deleviryFee(subtotal).toStringAsFixed(2);
  String get toFreeDelivery_string => toFreeDelivery(subtotal).toString();


  @override
  List<Object?> get props => [products];
}
