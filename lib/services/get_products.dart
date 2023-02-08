import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/products.dart';

class ProductService{

  Future<List<ProductsModel>?> getData() async {

    var uri = Uri.parse('https://my-json-server.typicode.com/kodplex/pr-re-ec-products/db');
    var response = await http.get(uri);

    print(response.statusCode);
    
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<dynamic> product = List<ProductsModel>.from(data["products"].map());
    }else{
      print(response.statusCode);
    }
    return null;
  }
}