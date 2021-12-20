import 'package:flutter/material.dart';

class MyBag extends StatelessWidget {
  const MyBag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "My Bag",
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
                  Container(
                    alignment: Alignment.topLeft,
                    width: 100,
                    child: Image(
                      image: AssetImage("assets/images/kadın_giyim_1.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Blazer Jecket",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "  ZARA",
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
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.sell,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Divider(),
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text("BUY"),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
