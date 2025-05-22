import 'package:flutter/material.dart';
import 'package:untangle_1/components/selectTile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Light Mode",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Roboto",
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Roboto",
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Roboto",
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Image.asset("img/untangle_logo.png", height: 50),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Farbe des Drawer-Icons
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(Icons.link, size: 30),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[500],
      body: Column(
        children: [
          //Top mit Namen und Datum
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(50),
                bottomStart: Radius.circular(50),
              ),
            ),
            child: Center(
              child: Text(
                "Lena & Marlene",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          SizedBox(height: 50),

          //Auswahl
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/weeklyRef");
                  },
                  child: SelectTile(tileTitle: "Weekly Reflexions"),
                ),

                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/konflikt");
                  },
                  child: SelectTile(tileTitle: "Konfliktlösungen"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
