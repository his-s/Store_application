import 'package:flutter/material.dart';
import 'package:store/data/models/product.dart';
import 'package:store/presentation/core/widgets/prodcut_card.dart';

class ProductSliderWidget extends StatelessWidget {
  const ProductSliderWidget({Key? key, required this.products})
      : super(key: key);
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
