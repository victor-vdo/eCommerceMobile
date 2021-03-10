import 'package:eCommerceMobile/models/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  Product product;
  ProductPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              silverApp(this.product),
            ];
          },
          body: listScreen(this.product),
        ),
      ),
    );
  }
}

Widget silverApp(Product product) {
  return SliverAppBar(
    iconTheme: IconThemeData(
      color: Colors.black, //change your color here
    ),
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 0.0,
    expandedHeight: 500,
    floating: false,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      background: Image.asset(product.imageUrl),
    ),
  );
}

Widget listScreen(Product product) {
  return ListView(
    children: [
      Padding(
        padding: EdgeInsets.only(
          top: 1,
          left: 10,
          right: 10,
        ),
        child: Text(
          product.name,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text("by Nike"),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "Detalhes",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          product.description,
          textAlign: TextAlign.justify,
        ),
      ),
    ],
  );
}
