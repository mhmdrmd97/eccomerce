import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/lib.dart';

class CarouselSliderPlayer extends StatelessWidget {
  const CarouselSliderPlayer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        scrollDirection: Axis.horizontal,
      ),
      items: CategoryModel.categories.map((category)=>CarouselCard(category:category)).toList()
    ));
  }
}

