import 'package:flutter/material.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/jecket.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/spor.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/suit.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/tshirt.dart';
import 'package:flutter_application_123/man.dart';
import 'package:flutter_application_123/pages/home.dart';
import 'package:flutter_application_123/product/iphone_13.dart';
import 'package:flutter_application_123/product/macbook_air.dart';
import 'package:flutter_application_123/product/macbook_pro.dart';
import 'package:flutter_application_123/product/monster.dart';

class TechnologyPage extends StatelessWidget {
  const TechnologyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "ENJOY THE SHOPPING",
                style: TextStyle(
                    fontFamily: "Genel",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.4)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Woman",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Genel",
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                TextButton(
                  onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ManPage()));
                  },
                  child: Text(
                    "Man",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Genel",
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Technology",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Genel",
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 220,
                width: 500,
                child: Image(
                  image: AssetImage("assets/images/teknoloji_1.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MonsterPage(
                                imgPath: "assets/images/monster.jpg")));
                      },
                      child: Hero(
                        tag: "assets/images/monster.jpg",
                        child: Container(
                          height: 100,
                          width: 190,
                          child: Image(
                            image: AssetImage("assets/images/monster.jpg"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MacbookAirPage(
                                imgPath: "assets/images/macbook_air.jpg")));
                      },
                      child: Hero(
                        tag: "assets/images/macbook_air.jpg",
                        child: Container(
                          height: 100,
                          width: 160,
                          child: Image(
                            image: AssetImage("assets/images/macbook_air.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MacbookProPage(
                            imgPath: "assets/images/macbook_pro.jpg")));
                  },
                  child: Hero(
                    tag: "assets/images/macbook_pro.jpg",
                    child: Container(
                      height: 100,
                      width: 190,
                      child: Image(
                        image: AssetImage("assets/images/macbook_pro.jpg"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            IphonePage(imgPath: "assets/images/iphone_13.jpg")));
                  },
                  child: Hero(
                    tag: "assets/images/iphone_13.jpg",
                    child: Container(
                      height: 100,
                      width: 170,
                      child: Image(
                        image: AssetImage("assets/images/iphone_13.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
