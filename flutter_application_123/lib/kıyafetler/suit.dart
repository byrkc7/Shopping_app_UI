import 'package:flutter/material.dart';

class SuitPage extends StatefulWidget {
  var imgPath;
  SuitPage({this.imgPath});

  @override
  _SuitPageState createState() => _SuitPageState();
}

class _SuitPageState extends State<SuitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                          ),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/erkek_giyim_3.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Suit",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Genel",
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(),
                        Container(
                          color: Colors.transparent,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text(
                                  "XS",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    "S",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    "M",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    "L",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: Text(
                          "\$489",
                          style: TextStyle(fontFamily: "Genel", fontSize: 22),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.shopping_bag_outlined),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: MaterialButton(
                              color: Colors.orange,
                              onPressed: () {},
                              child: Text(
                                "BUY",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Genel",
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ]),
              ),
            )),
      ],
    ));
  }
}
