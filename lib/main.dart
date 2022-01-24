// ignore_for_file: prefer_const_constructors

import 'package:app_layout/consts/colors/colors.dart';
import 'package:app_layout/provider/themeProvider.dart';
import 'package:app_layout/widget/contentCard.dart';
import 'package:app_layout/widget/expandableFab.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
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
                        margin: EdgeInsets.only(left: 140),
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
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ContentCard(
                        cardType: 'vertical',
                        text: "Novos\npedidos",
                        icon: Icons.shop_2,
                        number: textOrder),
                    ContentCard(
                        cardType: 'vertical',
                        text: "Novos\nclientes",
                        icon: Icons.people_alt_rounded,
                        number: textClients),
                    ContentCard(
                        cardType: 'vertical',
                        text: "Novas\ncidades",
                        icon: Icons.location_city_rounded,
                        number: textCities)
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: ContentCard(
                  text: "em novos pedidos",
                  cardType: 'horizontal',
                  icon: Icons.shop_2,
                  number: textMoney,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ExpandableFab(distance: 112.0, children: [
        ActionButton(
          onPressed: () {},
          icon: Icons.person_add,
        ),
        ActionButton(
          onPressed: () {},
          icon: Icons.add_shopping_cart,
        ),
        ActionButton(
          onPressed: () {},
          icon: Icons.person_add,
        ),
      ]),
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
            ),
          ],
        ),
      ),
    );
  }
}
