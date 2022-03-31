import 'package:flutter/material.dart';
import 'package:new_hello_world/product_control.dart';

import './movie.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  const ProductManager({Key? key,this.startingProduct = "sweet tester"});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(10.0),
        child: ProductControl(onPressed: _addProducts),
      ),
      Products(products: _products)
    ]);
  }
}
