// ignore_for_file: prefer_const_constructors

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  bool isHide = false;
  String textOrder = "12";
  String textClients = "20";
  String textCities = "20";
  String textMoney = "R\$  34.000,00";

  toogleHide() {
    if (isHide) {
      isHide = false;
    } else {
      isHide = true;
    }
  }

  changeVisibility() {
    if (isHide) {
      setState(() {
        textOrder = " * ";
        textClients = " * ";
        textCities = " * ";
        textMoney = "R\$ -,---";
      });
    } else {
      setState(() {
        textOrder = "12";
        textClients = "20";
        textCities = "20";
        textMoney = "R\$  34.000,00";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/doguinho.jpg"),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      child: Text(
                        "Olá",
                        style: TextStyle(
                            fontFamily: 'marker',
                            color: Color(primaryColor),
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                    Text(
                      "Ziraldo!",
                      style: TextStyle(
                          fontFamily: 'marker',
                          color: Color(primaryColor),
                          fontWeight: FontWeight.w700,
                          fontSize: 50),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Parabéns! Esse mês você fez ",
                style: TextStyle(
                    fontFamily: 'marker',
                    color: Color(primaryColor),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  toogleHide();
                  changeVisibility();
                },
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
                        margin: const EdgeInsets.only(left: 50),
                        child: Text(
                          textOrder,
                          style: GoogleFonts.concertOne(
                            color: Color(contentColor),
                            fontSize: 20,
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
                            fontFamily: "marker",
                            color: Color(contentColor),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        child: Text(
                          textClients,
                          style: GoogleFonts.concertOne(
                            color: Color(contentColor),
                            fontSize: 20,
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
                          fontFamily: "marker",
                          color: Color(contentColor),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        child: Text(
                          textCities,
                          style: GoogleFonts.concertOne(
                            color: Color(contentColor),
                            fontSize: 20,
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
                          fontFamily: "marker",
                          color: Color(contentColor),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 1),
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
                        textMoney,
                        style: GoogleFonts.concertOne(
                          color: Color(contentColor),
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70, top: 10),
                        child: Text(
                          "em novos pedidos",
                          style: TextStyle(
                            fontFamily: "marker",
                            color: Color(contentColor),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: BottomNavyBar(
          onItemSelected: (index) => setState(() {}),
          backgroundColor: Color(backgroundColor),
          showElevation: false,
          iconSize: 30,
          items: [
            BottomNavyBarItem(
              activeColor: Color(primaryColor),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontFamily: "marker", fontSize: 20),
              ),
            ),
            BottomNavyBarItem(
              activeColor: Color(primaryColor),
              icon: Icon(Icons.shop_2),
              title: Text(
                "Loja",
                style: TextStyle(fontFamily: "marker", fontSize: 20),
              ),
            ),
            BottomNavyBarItem(
              activeColor: Color(primaryColor),
              icon: Icon(Icons.people),
              title: Text(
                "Loja",
                style: TextStyle(fontFamily: "marker", fontSize: 20),
              ),
            ),
            BottomNavyBarItem(
              activeColor: Color(primaryColor),
              icon: Icon(Icons.moving_rounded),
              title: Text(
                "Loja",
                style: TextStyle(fontFamily: "marker", fontSize: 20),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(primaryColor),
      ),
    );
  }
}
