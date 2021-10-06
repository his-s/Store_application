import 'package:flutter/material.dart';
import 'package:store/data/models/product.dart';
import 'package:store/presentation/core/widgets/prodcut_card.dart';

class ProductSliderWidget extends StatelessWidget {
  const ProductSliderWidget({Key? key, required this.products})
      : super(key: key);
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    // return CarouselSlider.builder(
    //   options: CarouselOptions(
    //     scrollPhysics: const BouncingScrollPhysics(),
    //     height: 260,
    //     pauseAutoPlayOnTouch: true,
    //     autoPlay: true,
    //     initialPage: 0,
    //     disableCenter: true,
    //     enlargeCenterPage: true,
    //     enableInfiniteScroll: false,
    //     viewportFraction: .45,
    //     pageSnapping: false,
    //     scrollDirection: Axis.horizontal,
    //   ),
    //   itemCount: products.length,
    //   itemBuilder: (context, index, dot) {
    //     return ProductCardWidget(
    //       product: products[index],
    //     );
    //   },
    // );
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCardWidget(
          product: products[index],
        );
      },
    );
  }
}
