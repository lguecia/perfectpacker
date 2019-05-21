import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue; // = '';
  String _brandValue;
  String _colorValue;
  String _descriptionValue; // = '';
  double _priceValue; // = 0.0;

  @override
  Widget build(BuildContext context) {
    // return Center(
    // child: RaisedButton(
    // child: Text('Save'),
    // onPressed: () {
    // showModalBottomSheet(
    // context: context,
    // builder: (BuildContext context) {
    // return Center(
    // child: Text('This is a Modal!'),
    // );
    // });
    // },
    // ),
    // );
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          // TextField(autofocus: true,) // autofocus from the start
          TextField(
            decoration: InputDecoration(labelText: 'Clothing Item'),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Brand'),
            onChanged: (String value) {
              setState(() {
                _brandValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Color'),
            onChanged: (String value) {
              setState(() {
                _colorValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Description'),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                _descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _priceValue = double.parse(value);
              });
            },
          ),
          // Text(titleValue)
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
              child: Text('Save'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                final Map<String, dynamic> product = {
                  'title': _titleValue,
                  'brand': _brandValue,
                  'color': _colorValue,
                  'description': _descriptionValue,
                  'price': _priceValue,
                  'image': 'assets/BeautyBlog.jpeg'
                };
                widget.addProduct(product);
                Navigator.pushReplacementNamed(context, '/products');
              },
            )
        ],
      ),
    );
  }
}
