import 'package:flutter/material.dart';
import 'package:untangle_1/components/reflexionTile.dart';

class WeeklyReflexion extends StatefulWidget {
  WeeklyReflexion({super.key});

  @override
  State<WeeklyReflexion> createState() => _WeeklyReflexionState();
}

class _WeeklyReflexionState extends State<WeeklyReflexion> {
  List<String> reflexions = [];

  TextEditingController reflexionController = TextEditingController();

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
      body: ListView.builder(
        itemCount: reflexions.length,
        itemBuilder: (context, index) {
          return ReflexionTile(reflexion: reflexions[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //Dialog geht auf
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Reflexionsfrage"),
                content: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "deine Frage...",
                  ),
                  controller: reflexionController,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        reflexions.add(reflexionController.text);
                      });
                      //zu Liste hinzufügen

                      //Textfeld leeren
                      reflexionController.clear();
                      //Dialog schließen
                      Navigator.of(context).pop();
                    },
                    child: Text("Hinzufügen"),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
