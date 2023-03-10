import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Ecommerce.dart';

class ECommerceService{

  Future<http.Response> fetchProducts(){
    return http.get(Uri.parse('https://my-json-server.typicode.com/kodplex/pr-re-ec-products/db'));
  }

  Future<Ecommerce?> getData() async {
    var response = await fetchProducts();
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return Ecommerce.fromJson(data['ecommerce']);
    }else{
      print(response.statusCode);
    }
    return null;
  }
}