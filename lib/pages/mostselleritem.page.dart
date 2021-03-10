import 'package:eCommerceMobile/models/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MostSellerItemPage extends StatefulWidget {
  Product product;
  double quantity = 1.0;
  MostSellerItemPage(this.product);

  @override
  _MostSellerItemPageState createState() => _MostSellerItemPageState();
}

class _MostSellerItemPageState extends State<MostSellerItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              silverApp(this.widget.product),
            ];
          },
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  this.widget.product.name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("by " + this.widget.product.brand),
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
                padding: EdgeInsets.only(
                  bottom: 2,
                  left: 10,
                  right: 10,
                  top: 1,
                ),
                child: Text(
                  this.widget.product.description,
                  textAlign: TextAlign.justify,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            if (this.widget.quantity > 1)
                              this.widget.quantity--;
                          });
                        },
                        child: Text("-"),
                      ),
                      Text(
                        this.widget.quantity.toString(),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            this.widget.quantity++;
                          });
                        },
                        child: Text("+"),
                      ),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.lime,
                    child: Text(
                      "Adicionar ao carrinho",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget silverApp(Product product) {
  return SliverAppBar(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white.withOpacity(0),
    elevation: 0.0,
    expandedHeight: 493,
    floating: false,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      background: Image.network(product.imageUrl),
    ),
  );
}

// Widget listScreen(Product product, double quantity) {
//   return ListView(
//     children: [
//       Padding(
//         padding: EdgeInsets.only(
//           left: 10,
//           right: 10,
//         ),
//         child: Text(
//           product.name,
//           style: TextStyle(
//             fontSize: 26,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Text("by " + product.brand),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: Text(
//           "Detalhes",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(
//           bottom: 2,
//           left: 10,
//           right: 10,
//           top: 1,
//         ),
//         child: Text(
//           product.description,
//           textAlign: TextAlign.justify,
//         ),
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FlatButton(
//                 onPressed: () {
//                   setState(() {
//                     quantity = quantity--;
//                   });
//                 },
//                 child: Text("-"),
//               ),
//               Text(
//                 quantity.toString(),
//               ),
//               FlatButton(
//                 onPressed: () {
//                   setState(() {
//                     quantity = quantity++;
//                   });
//                 },
//                 child: Text("+"),
//               ),
//             ],
//           ),
//           FlatButton(
//             onPressed: () {},
//             color: Colors.lime,
//             child: Text(
//               "Adicionar ao carrinho",
//               textAlign: TextAlign.center,
//             ),
//           )
//         ],
//       ),
//     ],
//   );
// }
