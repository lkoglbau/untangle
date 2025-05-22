import 'package:flutter/material.dart';

class ReflexionTile extends StatelessWidget {
  final String reflexion;

  ReflexionTile({super.key, required this.reflexion});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        reflexion,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto",
        ),
      ),
    );
  }
}
      
       // Hier kannst du die Logik hinzufügen, die beim Tippen auf die Tile ausgeführt werden soll
      
    
  
