import 'package:flutter/material.dart';

import '../product_manager.dart';
// import './products_admin.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  // final Function addProduct;
  // final Function deleteProduct;

  // ProductsPage(this.products, this.addProduct, this.deleteProduct);
  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Perfect Packer'),
            ),
            ListTile(
              title: Text('Manage Packing Lists'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Perfect Packer'),
      ),
      //body: ProductManager(startingProduct: 'Beauty Item 1'),
      // body: ProductManager(products, addProduct, deleteProduct),
      body: ProductManager(products),
    );
  }
}
