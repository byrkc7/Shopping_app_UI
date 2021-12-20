import 'package:flutter/material.dart';

import 'package:flutter_application_123/k%C4%B1yafetler/jecket.dart';

import 'package:flutter_application_123/k%C4%B1yafetler/spor.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/suit.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/tshirt.dart';
import 'package:flutter_application_123/pages/home.dart';
import 'package:flutter_application_123/technology.dart';

class ManPage extends StatelessWidget {
  const ManPage({Key? key}) : super(key: key);

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
                  onPressed: () {},
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TechnologyPage()));
                  },
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
                height: 100,
                width: 600,
                child: Image(
                  image: AssetImage("assets/images/erkek_giyim.png"),
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
                            builder: (context) => JecketPage(
                                imgPath: "assets/images/erkek_giyim_1.jpg")));
                      },
                      child: Hero(
                        tag: "assets/images/erkek_giyim_1.jpg",
                        child: Container(
                          height: 200,
                          width: 190,
                          child: Image(
                            image:
                                AssetImage("assets/images/erkek_giyim_1.jpg"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TshirtPage(
                                imgPath: "assets/images/erkek_giyim_2.jpg")));
                      },
                      child: Hero(
                        tag: "assets/images/erkek_giyim_2.jpg",
                        child: Container(
                          height: 190,
                          width: 160,
                          child: Image(
                            image:
                                AssetImage("assets/images/erkek_giyim_2.jpg"),
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
                        builder: (context) => SuitPage(
                            imgPath: "assets/images/erkek_giyim_3.jpg")));
                  },
                  child: Hero(
                    tag: "assets/images/erkek_giyim_3.jpg",
                    child: Container(
                      height: 300,
                      width: 190,
                      child: Image(
                        image: AssetImage("assets/images/erkek_giyim_3.jpg"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SporPage(
                            imgPath: "assets/images/erkek_giyim_4.jpg")));
                  },
                  child: Hero(
                    tag: "assets/images/erkek_giyim_4.jpg",
                    child: Container(
                      height: 300,
                      width: 170,
                      child: Image(
                        image: AssetImage("assets/images/erkek_giyim_4.jpg"),
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
