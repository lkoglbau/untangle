import 'package:flutter/material.dart';

class SelectTile extends StatelessWidget {
  final String tileTitle;

  const SelectTile({super.key, required this.tileTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //kleine Vorschaubox links
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(width: 20),
          //Text rechts
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tileTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
