import 'package:flutter/material.dart';

class KonfliktPage extends StatelessWidget {
  const KonfliktPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("img/untangle_logo.png", height: 50),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Farbe des Drawer-Icons
        ),
      ),
      body: Center(child: Text("Konfliktlösungen")),
    );
  }
}
