import 'package:flutter/material.dart';
import 'package:flutter_application_123/pages/bag.dart';
import 'package:flutter_application_123/pages/favori.dart';
import 'package:flutter_application_123/pages/home.dart';
import 'package:flutter_application_123/pages/profil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: ShopingTab(),
    );
  }
}

class ShopingTab extends StatelessWidget {
  const ShopingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ButtomNavigatorBar());
  }

  DefaultTabController ButtomNavigatorBar() {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(brightness: Brightness.light),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Container(
            color: Colors.white,
            child: const TabBar(
              labelStyle: TextStyle(fontSize: 12),
              tabs: [
                Tab(
                  icon: Icon(Icons.home_outlined),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.favorite_border_outlined),
                  text: "Favourite",
                ),
                Tab(
                  icon: Icon(Icons.shopping_bag_outlined),
                  text: "My Bag",
                ),
                Tab(
                  icon: Icon(Icons.account_circle_outlined),
                  text: "Profile",
                ),
              ],
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
            ),
          ),
          body: const TabBarView(
            children: [HomePage(), FavouritePage(), MyBag(), ProfilPage()],
          ),
        ),
      ),
    );
  }
}
