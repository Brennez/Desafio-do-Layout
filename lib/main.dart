// ignore_for_file: prefer_const_constructors

import 'package:app_layout/consts/colors/colors.dart';
import 'package:app_layout/provider/themeProvider.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'widget/changeThemeButton.dart';
import 'provider/themeProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyTheme.lightMode,
            darkTheme: MyTheme.darkMode,
            home: HomePage(),
          );
        },
      );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  bool isHide = false;

  String textOrder = "12";
  String textClients = "20";
  String textCities = "20";
  String textMoney = "R\$  34.000,00";

  toggleHide() {
    isHide = !isHide;
  }

  changeVisibility() {
    if (isHide) {
      setState(() {
        textOrder = " * ";
        textClients = " * ";
        textCities = " * ";
        textMoney = "R\$ --,---";
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
      appBar: AppBar(
        actions: [ChangeThemeButton()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 30),
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
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Text(
                      "Little Dog",
                      style: Theme.of(context).textTheme.headline1,
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
                style: Theme.of(context).textTheme.caption,
              ),
              IconButton(
                onPressed: () {
                  toggleHide();
                  changeVisibility();
                },
                icon: isHide
                    ? Icon(
                        Icons.visibility_off,
                      )
                    : Icon(
                        Icons.remove_red_eye_outlined,
                      ),
              )
            ],
          ),
          Card(
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
                              textStyle: Theme.of(context).textTheme.subtitle1),
                        ),
                      ),
                      Icon(
                        Icons.shop_2,
                        size: 40,
                      ),
                      Text("Novos\npedidos",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.caption),
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
                              textStyle: Theme.of(context).textTheme.subtitle1),
                        ),
                      ),
                      Icon(
                        Icons.people,
                        size: 40,
                      ),
                      Text("Novos\nclientes",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.caption),
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
                              textStyle: Theme.of(context).textTheme.subtitle1),
                        ),
                      ),
                      Icon(
                        Icons.location_city_rounded,
                        size: 40,
                      ),
                      Text("Novas\ncidades",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.caption),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 1),
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
                  ),
                  Column(
                    children: [
                      Text(
                        textMoney,
                        style: GoogleFonts.concertOne(
                          textStyle: Theme.of(context).textTheme.headline2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 60, top: 10),
                        child: Text(
                          "em novos pedidos",
                          style: Theme.of(context).textTheme.subtitle2,
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
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          showElevation: false,
          iconSize: 30,
          items: [
            BottomNavyBarItem(
              activeColor: kPrimaryColor,
              icon: Icon(
                Icons.home,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                "Home",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            BottomNavyBarItem(
              activeColor: kPrimaryColor,
              icon: Icon(
                Icons.shop_2,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                "Loja",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            BottomNavyBarItem(
              activeColor: kPrimaryColor,
              icon: Icon(
                Icons.people,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                "Clientes",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            BottomNavyBarItem(
              activeColor: kPrimaryColor,
              icon: Icon(
                Icons.moving_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                "Gráficos",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: kBackgroundColor,
        ),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}
