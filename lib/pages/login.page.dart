import 'package:eCommerceMobile/pages/home.page.dart';
import 'package:eCommerceMobile/pages/signup.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgotpassword.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailTaskController = TextEditingController();

  var passwordTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Remove o foco em qualquer widget
    // (Sem ele o cursor fica fixo no primeiro TextArea e o teclado aparece
    // quando inicia a aplicação)
    // FocusScope.of(context).requestFocus(new FocusNode());
    return SafeArea(
      child: Scaffold(
        body: new GestureDetector(
          onTap: () {
            //   FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  // Pega todo o tamanho da tela na largura
                  width: MediaQuery.of(context).size.width,
                  // Pega todo o tamanho da tela na altura
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  padding: EdgeInsets.all(5),
                  child: LayoutBuilder(
                    builder: (_, constraints) {
                      return Column(
                        children: [
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: constraints.maxWidth,
                                  // Pega 10% da altura da tela
                                  height: constraints.maxHeight * .1,
                                ),
                                Container(
                                  width: constraints.maxWidth * .8,
                                  height: constraints.maxHeight * .67,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.black26,
                                        offset: new Offset(3, 2.0),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: ListView(
                                    children: <Widget>[
                                      Container(
                                        width: constraints.maxWidth * .8,
                                        height: constraints.maxHeight * .03,
                                      ),
                                      // Inicio Row
                                      Row(
                                        children: [
                                          Container(
                                            width: constraints.maxWidth * .02,
                                            height: constraints.maxHeight * .03,
                                          ),
                                          Text(
                                            "Bem vindo!",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ], // Fim Row
                                      ),
                                      Container(
                                        height: constraints.maxHeight * 0.3,
                                        width: constraints.maxWidth,
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/images/shop.png"),
                                          ],
                                        ),
                                      ),
                                      TextFormField(
                                        controller: emailTaskController,
                                        autofocus: false,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          labelText: "Email",
                                          labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      TextFormField(
                                        controller: passwordTaskController,
                                        autofocus: false,
                                        keyboardType: TextInputType.text,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          labelText: "Senha",
                                          labelStyle: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: constraints.maxHeight * 0.02,
                                      ),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 10),
                                            width: constraints.maxWidth * .36,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: FlatButton(
                                              color: Colors.lightBlue[100],
                                              child: Text(
                                                "Login",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            height: constraints.maxWidth * .09,
                                            width: constraints.maxWidth * .36,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 58, 85, 159),
                                              border: Border.all(
                                                width: 2.0,
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: FlatButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Login com Facebook",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: constraints.maxHeight * 0.01,
                                        width: constraints.maxWidth,
                                      ),
                                      Container(
                                        child: FlatButton(
                                          child: Text(
                                            "Esqueci minha senha",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotPasswordPage(),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: constraints.maxHeight * 0.01,
                            width: constraints.maxWidth,
                          ),
                          Container(
                            child: FlatButton(
                              child: Text(
                                "Cadastre-se",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
