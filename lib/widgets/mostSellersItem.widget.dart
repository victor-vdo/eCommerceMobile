import 'package:flutter/material.dart';

Widget mostSellersItem(BuildContext context) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/perfil.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Column(
                      children: [
                        Text("Titulo do produto"),
                        Text(
                          "\$200",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                alignment: Alignment.center,
                                child: FlatButton(
                                  child: Text("-"),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: 40,
                                alignment: Alignment.center,
                                child: Text("1"),
                              ),
                              Container(
                                width: 40,
                                alignment: Alignment.center,
                                child: FlatButton(
                                  child: Text("+"),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: FlatButton(
            color: Colors.greenAccent,
            child: Text("Adicionar"),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
