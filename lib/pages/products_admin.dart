// Manage Packing Lists | main screen for 'Create List' and 'My Lists'

import 'package:flutter/material.dart';

// import './products.dart';
import './product_create.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Perfect Packer'),
              ),
              ListTile(
                title: Text('See Closet'),
                onTap: () {
                  // Navigator.pushReplacement(
                      // context,
                      // MaterialPageRoute(
                          // builder: (BuildContext context) => ProductsPage()));
                  Navigator.pushReplacementNamed(context, '/products');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Packing Lists'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Create Packing List',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Packing Lists',
              ),
            ],
          ),
        ),
        // body: Center(
          // child: Text('Manage your Products'),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(addProduct),
            ProductListPage()
          ],
        ),),
        );
        // bottomNavigationBar: ,
      // );
    // );
  }
}
