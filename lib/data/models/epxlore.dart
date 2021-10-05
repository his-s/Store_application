import 'package:store/data/models/product.dart';

class Explore {
  String title;
  String imageUrl;
  String id;
  List<Product> products;
  Explore({
    required this.title,
    required this.imageUrl,
    required this.id,
    required this.products,
  });
}
