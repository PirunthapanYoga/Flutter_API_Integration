import 'package:flutter/material.dart';
import 'package:grocery_store/services/get_products.dart';

import '../models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductsModel>? products;
  var isLoaded = false;


  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    products = await ProductService().getData();
    if(products !=null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: products?.length,
            itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                SizedBox(

              ), Column(

              )
              ],
            ),
          );
        }),
        replacement: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
