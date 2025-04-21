import 'package:flutter/material.dart';

Widget FancyTable() {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: Column(
      children: [
        _tableHeaderRow(),
        _tableDataRow("1", "110", "Adil Naeem", "01:46.21", "1"),
        _tableDataRow("2", "108", "Zane Bhan", "01:52.48", "1"),
      ],
    ),
  );
}

Widget _tableHeaderRow() {
  return Row(
    children: ["#", "Num", "Driver", "B.Time", "B.Lap"].map((e) => Expanded(child: Text(e, style: TextStyle(color: Colors.white70)))).toList(),
  );
}

Widget _tableDataRow(String rank, String num, String name, String time, String lap) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Text(rank, style: TextStyle(color: Colors.white),),
        Text(num, style: TextStyle(color: Colors.white),),
        Text(name, style: TextStyle(color: Colors.white),),
        Text(time, style: TextStyle(color: Colors.white),),
        Text(lap, style: TextStyle(color: Colors.white),),
      ].map((e) => Expanded(child: e)).toList(),
    ),
  );
}
