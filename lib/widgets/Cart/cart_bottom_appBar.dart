import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';

class CartBottomAppBar extends StatelessWidget {
  const CartBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      color: Colors.black,
      child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Text('Go To CheckOut',
                      style: Theme.of(context).textTheme.headline3)),
            ],
          )),
    );
  }
}