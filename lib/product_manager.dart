import 'package:flutter/material.dart';

import './products.dart';
// import './product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  // final Function addProduct;
  // final Function deleteProduct;
  // final Map<String, String> startingProduct;

  // ProductManager(this.products, this.addProduct, this.deleteProduct);
  ProductManager(this.products);

  // ProductManager({this.startingProduct}) {
    // print('[ProductManager Widget] Constructor');
  // }

  // @override
  // State<StatefulWidget> createState() {
    // print('[ProductManager Widget] createState()');
    // return _ProductManagerState();
  // }
// }

// class _ProductManagerState extends State<ProductManager> {
  // final List<Map<String, String>> _products = [];

  // @override
  // void initState() {
    // if (widget.startingProduct != null) {
      // _products.add(widget.startingProduct);
    // }
    // print('[ProductManager State] initState()');
    // _products.add(widget.startingProduct);
    // super.initState();
  // }

  // @override
  // void didUpdateWidget(ProductManager oldWidget) {
    // print('[ProductManager State] didUpdateWidget()');
    // super.didUpdateWidget(oldWidget);
  // }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [
        // Container(
          // margin: EdgeInsets.all(10.0),
          // child: ProductControl(addProduct),
        // ),
        // Expanded(child: Products(products, deleteProduct: deleteProduct))
        Expanded(child: Products(products))
      ],
    );
  }
}
