import 'package:grocery_store/models/products.dart';

import 'Currency.dart';

class Ecommerce {
  String? name;
  String? logo;
  Currency? currency;
  List<ProductsModel>? products;

  Ecommerce({
    this.name,
    this.logo,
    this.currency,
    this.products
  });

  factory Ecommerce.fromJson(Map<String, dynamic> json) => Ecommerce(
    name: json["name"],
    logo: json["logo"],
    currency: Currency.fromJson(json["currency"]),
    products: List<ProductsModel>.from(json["products"].map((x) => ProductsModel.fromJson(x))),
  );
}