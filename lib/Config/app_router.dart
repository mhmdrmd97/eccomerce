import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';


class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print(
      'this is route: ${settings.name}'
      '\n this is argumets: ${settings.arguments}'
    );
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
     
      case CartScreen.routeName:
        return CartScreen.route();
     
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as CategoryModel);
     
      case WishListScreen.routeName:
        return WishListScreen.route();
     
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as ProductModel);
        
        default:
       return MaterialPageRoute(
      settings: RouteSettings(name: '/error') ,
      builder: (_)=> Scaffold(appBar: AppBar(title: Text('Error')),));
    }
  }
}
