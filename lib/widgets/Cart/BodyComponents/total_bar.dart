import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';


class Total_Bar extends StatelessWidget {
  const Total_Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children:[
      Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color:Colors.black.withAlpha(50),
        ),
      ),
      TotalStack(),
    ]);
  }
}
