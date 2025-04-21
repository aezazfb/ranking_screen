import 'package:flutter/material.dart';
import 'package:race_ranking_ui/Components/ranking_table.dart' show FancyTable;

Widget RankingsSection() {
  return SingleChildScrollView(
    child: Column(
      children: [
        _CategoryTable("Prepared - Rankings", Colors.deepOrangeAccent),
        _CategoryTable("Stock - Rankings", Colors.lightGreenAccent.shade700),
      ],
    ),
  );
}

Widget _CategoryTable(String title, Color color) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: color),
        child: Center(
          child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color),
        ),
        child: Row(
          children: List.generate(4, (index) => Expanded(child: FancyTable())),
        ),
      )
    ],
  );
}
