import 'package:eCommerceMobile/models/product.dart';
import 'package:eCommerceMobile/pages/product.page.dart';
import 'package:flutter/material.dart';

Widget productItem(BuildContext context, Product product) {
  return Container(
    //padding: EdgeInsets.all(5),
    margin: EdgeInsets.all(5),
    width: 170,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Color(0xFFF5F5F5),
          margin: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(product),
                ),
              );
            },
            child: Image.asset(
              product.imageUrl,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 30,
          child: Center(
            child: Text(
              product.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            "Marca",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            product.price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
          ),
          child: Center(
            child: FlatButton(
              color: Colors.green,
              child: Text(
                "Adicionar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    ),
  );
}
