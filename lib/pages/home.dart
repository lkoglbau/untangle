import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Text(
          "Welcome to the Home Page",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}