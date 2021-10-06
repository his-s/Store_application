import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:store/data/models/product.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 248.51,
        width: 173.32,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(
            color: const Color(0xffE2E2E2),
            width: .5,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              width: 100,
              child: Hero(
                tag: product.id,
                child: Image.asset(product.imageUrl),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              title: Text(
                product.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                product.ammount + ", Price",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Text(
                "\$" + product.price.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: addButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget addButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 45.6,
        width: 45.6,
        decoration: const BoxDecoration(
          color: Color(0xff00B36F),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
