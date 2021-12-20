import 'package:flutter/material.dart';
import 'package:flutter_application_123/man.dart';
import 'package:flutter_application_123/technology.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/blezer.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/knit_sweater.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/leather_mini_dress.dart';
import 'package:flutter_application_123/k%C4%B1yafetler/leopard_print_mini_dress.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: HomePageDetay(),
    );
  }
}

class HomePageDetay extends StatefulWidget {
  const HomePageDetay({Key? key}) : super(key: key);

  @override
  State<HomePageDetay> createState() => _HomePageDetayState();
}

class _HomePageDetayState extends State<HomePageDetay> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                    onPressed: () {},
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
                height: 290,
                width: 600,
                child: Image(
                  image: AssetImage("assets/images/kadın_giyim.jpg"),
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
                            builder: (context) => DetayPage(
                                imgPath: "assets/images/kadın_giyim_1.jpg")));
                      },
                      child: Hero(
                        tag: "assets/images/kadın_giyim_1.jpg",
                        child: Container(
                          height: 200,
                          width: 160,
                          child: Image(
                            image:
                                AssetImage("assets/images/kadın_giyim_1.jpg"),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SweaterPage(
                                imgPath: "assets/images/kadın_giyim_2.jpg")));
                      },
                      child: Hero(
                        tag: "assets/images/kadın_giyim_2.jpg",
                        child: Container(
                          height: 200,
                          width: 160,
                          child: Image(
                            image:
                                AssetImage("assets/images/kadın_giyim_2.jpg"),
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
                        builder: (context) => LeatherPage(
                            imgPath: "assets/images/kadın_giyim_3.jpg")));
                  },
                  child: Hero(
                    tag: "assets/images/kadın_giyim_3.jpg",
                    child: Container(
                      height: 200,
                      width: 160,
                      child: Image(
                        image: AssetImage("assets/images/kadın_giyim_3.jpg"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MiniDressPage(
                            imgPath: "assets/images/kadın_giyim_4.jpg")));
                  },
                  child: Hero(
                    tag: "assets/images/kadın_giyim_4.jpg",
                    child: Container(
                      height: 200,
                      width: 160,
                      child: Image(
                        image: AssetImage("assets/images/kadın_giyim_4.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
