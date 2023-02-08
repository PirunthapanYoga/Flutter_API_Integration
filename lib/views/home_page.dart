import 'package:flutter/material.dart';
import 'package:grocery_store/services/get_ecommerce.dart';
import '../models/Ecommerce.dart';
import '../models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductsModel> products = <ProductsModel>[];
  var isLoaded = false;
  Ecommerce? ecommerce = new Ecommerce();

  void initState() {
    super.initState();
    setState(() {
      getData();
    });
  }

  getData() async {
    final ecommerce = await ECommerceService().getData();
    if (ecommerce != null) {
      setState(() {
        products = ecommerce.products!;
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
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: Image.network(products[index].image),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: Column(
                          children: [
                            Text(
                              "Product Name : " + products[index].name,
                              style: TextStyle(
                                  fontSize: 15, fontFamily: "Times New Roman"),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Description : " + products[index].description,
                              style: TextStyle(
                                  fontSize: 15, fontFamily: "Times New Roman"),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Price : " + products[index].price.toString(),
                              style: TextStyle(
                                  fontSize: 15, fontFamily: "Times New Roman"),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
        replacement: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
