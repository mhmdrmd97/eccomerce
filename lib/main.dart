import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: MyBlocObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    MultiBlocProvider(providers: [
      BlocProvider(create: (_)=>WishListBloc()..add(StartWishList())),
      BlocProvider(create: (_)=>CartBloc()..add(LoadCart())),
    ], 
    child:
    MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    ));
  }
}
