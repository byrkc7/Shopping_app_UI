import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.orange,
        title: Center(child: Text("Talha Bayrakcı")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Orders",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "My Wallet",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Support",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "My Assessments",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "My Favorites",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "My Addresses",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Settings",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
              Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Log Out",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              Divider(),
            ],
          )
        ],
      ),
    );
  }
}
