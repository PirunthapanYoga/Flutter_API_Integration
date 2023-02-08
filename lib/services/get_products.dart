import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Ecommerce.dart';
import '../models/products.dart';

class ProductService{

  Future<http.Response> fetchProducts(){
    return http.get(Uri.parse('https://my-json-server.typicode.com/kodplex/pr-re-ec-products/db'));
  }

  Future<Ecommerce?> getData() async {

    var response = await fetchProducts();

    print(response.statusCode);
    
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Ecommerce.fromJson(response.body as Map<String, dynamic>);
    }else{
      print(response.statusCode);
    }
    return null;
  }
}