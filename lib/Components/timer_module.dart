import 'package:flutter/material.dart';

Widget SideTimer() {
  return Container(
    height: 150,
    color: Colors.black,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("00:00.00", style: TextStyle(fontSize: 42, color: Colors.yellowAccent, fontFamily: 'Orbitron')),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text("LIVE", style: TextStyle(fontWeight: FontWeight.bold)),
        )
      ],
    ),
  );
}
