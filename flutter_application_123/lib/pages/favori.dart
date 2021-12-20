import 'package:flutter/material.dart';
import 'package:flutter_application_123/product/iphone_13.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Favourite",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: ListView(children: [
        Divider(
          color: Colors.grey,
        ),
        Container(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Hero(
                      tag: "assets/images/iphone_13.jpg",
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 100,
                        child: Image(
                          image: AssetImage("assets/images/iphone_13.jpg"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Iphone 13",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "  White",
                        style: TextStyle(fontSize: 11, color: Colors.black),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: () {},
                        child: Icon(Icons.remove_circle_outline_outlined)),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
