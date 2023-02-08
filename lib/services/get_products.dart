import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/products.dart';

class ProductService{

  Future<List<ProductsModel>?> getData() async {

    var client = http.Client();
    var uri = Uri.parse('https://my-json-server.typicode.com/kodplex/pr-re-ec-products/db');
    var response = await client.get(uri);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var ecommerce;
      var data = json.decode(response.ecommerce);
      print(data["name"]);
      List<dynamic> product = List<ProductsModel>.from(data["products"].map());
    }else{
      print(response.statusCode);
    }
    return null;
  }
}