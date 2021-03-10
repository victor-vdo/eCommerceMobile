import 'package:eCommerceMobile/models/product.dart';
import 'package:flutter/material.dart';

import 'productItem.widget.dart';

Widget productItemList(BuildContext context) {
  var product = new Product("Produto", "Descrição", "20",
      "assets/images/product-default.png", "Marca Padrão");

  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        productItem(context, product),
        productItem(context, product),
        productItem(context, product),
        productItem(context, product),
        productItem(context, product),
        productItem(context, product),
        //for (var item in products) productItem(context, item),
      ],
    ),
  );
}
