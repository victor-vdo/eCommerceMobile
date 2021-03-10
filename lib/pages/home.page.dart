import 'package:eCommerceMobile/models/product.dart';
import 'package:eCommerceMobile/pages/cart.page.dart';
import 'package:eCommerceMobile/pages/drawer/favorite.page.dart';
import 'package:eCommerceMobile/pages/drawer/myaccount.page.dart';
import 'package:eCommerceMobile/pages/mostselleritem.page.dart';

import 'package:eCommerceMobile/pages/drawer/promotion.page.dart';
import 'package:eCommerceMobile/pages/drawer/settings.page.dart';
import 'package:eCommerceMobile/widgets/productItemList.widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'drawer/myorders.page.dart';
import 'mostsellers.page.dart';

List<Product> products = new List<Product>();
var product = new Product("Produto", "Descrição", "20",
    "assets/images/product-default.png", "Marca Padrão");

List<Product> addProductToList(Product product) {
  List<Product> itens = new List<Product>();
  itens.add(product);
  return itens;
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menuDrawer(context),
      appBar: menuAppBar(context),
      body: Scaffold(
        body: scaffoldBody(context),
      ),
    );
  }
}

Widget menuAppBar(BuildContext context) {
  return AppBar(
    actions: [
      FlatButton(
        child: Row(
          children: [
            Text(
              "8",
              style: TextStyle(color: Colors.red),
              textAlign: TextAlign.left,
            ),
            Icon(Icons.add_shopping_cart),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(),
            ),
          );
        },
      ),
    ],
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
  );
}

Widget menuDrawer(BuildContext context) {
  return Drawer(
    child: new ListView(
      children: [
        new UserAccountsDrawerHeader(
          accountName: Text("Victor Oliveira"),
          accountEmail: Text("victor-vdo@bol.com.br"),
          currentAccountPicture: GestureDetector(
            onLongPress: () {},
            child: new CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: ClipOval(
                child: Image.asset("assets/images/perfil.jpg"),
              ),
              //Icon(
              // Icons.person,
              // color: Colors.white,
              //),
            ),
          ),
        ),
        ListTile(
          title: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyAccount(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.person_outline,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Minha conta"),
              ],
            ),
          ),
        ),
        ListTile(
          title: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PromotionPage(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.trending_down,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Promoções"),
              ],
            ),
          ),
        ),
        ListTile(
          title: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderPage(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.shopping_basket,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Meus Pedidos"),
              ],
            ),
          ),
        ),
        ListTile(
          title: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritePage(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(
                  width: 20,
                ),
                Text("Favoritos"),
              ],
            ),
          ),
        ),
        ListTile(
          title: FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Configurações"),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget scaffoldBody(BuildContext context) {
  return ListView(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(15),
        // color: Color(0xFFF5F5F5),
        color: Colors.white,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return listViewBody(context);
          },
        ),
      ),
    ],
  );
}

Widget listViewBody(BuildContext context) {
  return ListView(
    children: [
      search(),
      SizedBox(height: 20),
      Text(
        "Categorias",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      Container(
        height: 90,
        child: categoryList(),
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Mais vendidos",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          FlatButton(
            child: Text("Ver todos"),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MostSellersPage(),
                ),
              )
            },
          ),
        ],
      ),
      SizedBox(height: 10),
      Expanded(
        child: Container(
          height: 400,
          child: mostSellers(context),
        ),
      ),
      SizedBox(height: 20),
      Text(
        "CATEGORIA 1",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      Expanded(
        child: Container(
          height: 340,
          child: productItemList(context),
        ),
      ),
      SizedBox(height: 20),
      Text(
        "CATEGORIA 2",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      Expanded(
        child: Container(
          height: 340,
          child: productItemList(context),
        ),
      ),
      SizedBox(
        height: 100,
      ),
    ],
  );
}

Widget search() {
  return Container(
    padding: EdgeInsets.only(left: 20),
    height: 50,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    ),
    child: Row(
      children: [
        Icon(Icons.search),
        Flexible(
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Pesquisar...",
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        categoryItem("assets/images/shirt.png"),
        categoryItem("assets/images/shoes.png"),
        categoryItem("assets/images/glasses.jpg"),
        categoryItem("assets/images/bermuda.png"),
        categoryItem("assets/images/cap.png"),
        categoryItem("assets/images/belt.png"),
      ],
    ),
  );
}

Widget categoryItem(String imageUrl) {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    //padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          offset: new Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: FlatButton(
      child: Image.asset(imageUrl),
      onPressed: () => {},
    ),
  );
}

Widget mostSellers(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Center(
          child: mostSellersItem(context),
        ),
      ],
    ),
  );
}

Widget mostSellersItem(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(5),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          aspectRatio: 5.0,
          onPageChanged: (index, reason) {},
        ),
        items: sellerItemList(context),
      ),
    ),
  );
}

List<Widget> sellerItemList(BuildContext context) {
  var list = new List<Widget>();
  Set<String> set = Set.from(imgList);
  set.forEach((element) => product.imageUrl = element);
  set.forEach((element) => list.add(sellerItem(context, product)));
  return list;
}

Widget sellerItem(BuildContext context, Product product) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MostSellerItemPage(product),
        ),
      );
    },
    child: Image.network(
      product.imageUrl,
      fit: BoxFit.fill,
    ),
  );
}

class GetImageUrl {
  final String imageUrl;
  GetImageUrl(this.imageUrl);
}

List imgList = [
  'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1553456558-aff63285bdd1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZHVjdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1543512214-318c7553f230?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2R1Y3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1570831739435-6601aa3fa4fb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHByb2R1Y3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fHByb2R1Y3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1541643600914-78b084683601?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHByb2R1Y3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
];
