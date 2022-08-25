import 'package:bloc/bloc.dart';
import 'package:ecommerce/lib.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<LoadCart>(_onLoadCart);
    on<AddCartProduct>(_onAddCartProduct);
    on<RemoveCartProduct>(_onRemoveCartProduct);
  }

  Future<void> _onLoadCart(event, Emitter<CartState> emit) async {
    emit(CartLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(CartLoaded());
    } catch (err) {
      emit(CartError());
    }
  }

  void _onAddCartProduct(event, Emitter<CartState> emit) {
    final state = this.state;
    if (state is CartLoaded) {
      try {
        emit(CartLoaded(cart: CartModel(
          products:  List.from(state.cart.products)..add(event.product),
        )));
      } catch (err) {
           emit(CartError());        
      }
    }
  }

  void _onRemoveCartProduct(event, Emitter<CartState> emit) {
    final state = this.state;
    if (state is CartLoaded) {
      try {
        emit(CartLoaded(cart: CartModel(
          products: List.from(state.cart.products)..remove(event.product),
        )));
      } catch (err) {
           emit(CartError());        
      }
    }


  }
}
