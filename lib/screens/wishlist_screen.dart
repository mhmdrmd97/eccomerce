import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishListScreen extends StatefulWidget {
  static const String routeName = '/wishlist';

  WishListScreen({
    Key? key,
  }) : super(
          key: key,
        );

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => WishListScreen());
  }

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'WishList'),
      body: BlocBuilder<WishListBloc, WishListState>(builder: (context, state) {
        if (state is WishListLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is WishListLoaded) {
          return GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 2.2,
              ),
              itemCount: state.wishList.products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                    products: state.wishList.products[index],
                    widthFactor: 1.1,
                    left: 100,
                    isWishList: true);
              });
        } else {
          return Text('Something went wrong');
        }
      }),
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
