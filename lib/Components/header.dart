import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget RankingHeadernking() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Colors.black, Colors.grey.shade900]),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("FOR SPONSORSHIP", style: _labelTextStyle()),
            Text("CONTACT 0321-9225103", style: _valueTextStyle()),
          ],
        ),
        Text(
          "Blue World Autocross",
          style: GoogleFonts.orbitron(
            fontSize: 24,
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.yellow[800],
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Text("RASE", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    ),
  );
}

TextStyle _labelTextStyle() => TextStyle(color: Colors.white70, fontSize: 12);
TextStyle _valueTextStyle() => TextStyle(color: Colors.white, fontSize: 14);
