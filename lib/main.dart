import 'package:flutter/material.dart';
import 'package:race_ranking_ui/Components/header.dart';

import 'APIService/dio.service.dart';
import 'Components/ranking_area.dart';
import 'Components/timer_module.dart';

void main() {
  runApp(const RaceApp());
}

class RaceApp extends StatelessWidget {
  const RaceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RaceLeaderboard(),
    );
  }
}

class RaceLeaderboard extends StatelessWidget {
  const RaceLeaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            RankingHeadernking(),
            Expanded(child: RankingsSection()),
            SideTimer(),
          ],
        ),
      ),
    );
  }
}