import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/lib.dart';

class WishListBloc extends Bloc<WishListEvent, WishListState> {
  //constructor
  WishListBloc() : super(WishListLoading()) {
    on<StartWishList>((event, emit) async {
      await Future.delayed(Duration(seconds: 1));
      emit(WishListLoaded());
    });

    on<AddWishListProduct>((event, Emitter<WishListState> emit) async {
      final state = this.state;
      if (state is WishListLoaded) {
        try {
          emit(WishListLoaded(
              wishList: WishListModel(
                  products: List.from(state.wishList.products)
                    ..add(event.product))));
        } catch (err) {
          print(err);
        }
      }
    });

    on<RemoveWishListProduct>((event, Emitter<WishListState> emit) async {
       final state = this.state;
      if (state is WishListLoaded) {
        try {
             emit(WishListLoaded(
          wishList: WishListModel(
              products: List.from(state.wishList.products)
                ..remove(event.product))));

        }catch(err){print(err);}
      
      }
     
    });
  }

//   @override
//   Stream<WishListState> mapEventToState(
//     WishListEvent event,
//   ) async* {
//   if (event is AddWishListProduct) {
//       yield* _mapAddWishListProductToState(event,state);
//     }
//     else if (event is RemoveWishListProduct) {
//       yield* _mapRemoveWishListProductToState(event,state);
//     }

// }

// //fuctions

//  Stream<WishListState> _mapAddWishListProductToState(AddWishListProduct event, WishListState state) async* {

//       if(state is WishListLoaded){
//         try{
//            yield WishListLoaded(wishList:  WishListModel(products: List.from(state.wishList.products)..add(event.product)));

//         }catch(_){}
//       }

//  }

// Stream<WishListState> _mapRemoveWishListProductToState(RemoveWishListProduct event, WishListState state) async* {

//       if(state is WishListLoaded){
//         try{
//           yield WishListLoaded(wishList:  WishListModel(products: List.from(state.wishList.products)..remove(event.product)));

//         }catch(_){}
//       }

//  }

}
