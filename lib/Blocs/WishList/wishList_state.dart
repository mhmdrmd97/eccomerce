import 'package:ecommerce/lib.dart';
import 'package:equatable/equatable.dart';

class WishListState extends Equatable {
 const WishListState();

  @override
  List<Object?> get props => [];
}

class WishListLoading extends WishListState {}

class WishListLoaded extends WishListState {
  final WishListModel wishList;
 const  WishListLoaded({this.wishList = const WishListModel()});

   @override
  List<Object?> get props => [wishList];
}

class WishListError extends WishListState {}
