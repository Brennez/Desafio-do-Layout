// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'app layout',
      debugShowCheckedModeBanner: false,
      // theme: ,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const primaryColor = 0xFF210457;

  static const backgroundColor = 0xFFE6E6E6;

  static const contentColor = 0xFF4B1CA2;

  static const cardColor = 0xFFD7D3E2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 10, 30, 70),
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "Dog!",
                style: TextStyle(
                    color: Color(primaryColor),
                    fontWeight: FontWeight.w700,
                    fontSize: 50),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Parabéns! Esse mês você fez ",
                style: TextStyle(
                    color: Color(primaryColor),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(contentColor),
                ),
              )
            ],
          ),
          Card(
            color: Color(cardColor),
            elevation: 12,
            margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "12",
                          style: TextStyle(
                            color: Color(
                              contentColor,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.shop_2,
                        size: 40,
                        color: Color(primaryColor),
                      ),
                      Text(
                        "Novos\npedidos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(contentColor),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "20",
                          style: TextStyle(
                            color: Color(contentColor),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.people,
                        size: 40,
                        color: Color(primaryColor),
                      ),
                      Text(
                        "Novos\nclientes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(contentColor),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "20",
                          style: TextStyle(
                            color: Color(contentColor),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.location_city_rounded,
                        size: 40,
                        color: Color(primaryColor),
                      ),
                      Text(
                        "Novas\ncidades",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(contentColor),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
            color: Color(cardColor),
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.shop_2,
                    size: 60,
                    color: Color(primaryColor),
                  ),
                  Column(
                    children: [
                      Text(
                        "R\$  34.000,00",
                        style: TextStyle(
                          color: Color(contentColor),
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 34, top: 5),
                        child: Text(
                          "em novos pedidos",
                          style: TextStyle(
                            color: Color(contentColor),
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(primaryColor),
        unselectedItemColor: Color(contentColor),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Loja",
            icon: Icon(
              Icons.shop_2,
            ),
          ),
          BottomNavigationBarItem(
            label: "Clientes",
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: "Resultados",
            icon: Icon(
              Icons.moving_rounded,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(primaryColor),
      ),
    );
  }
}
