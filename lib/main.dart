import 'package:flutter/material.dart';
import 'package:zoc9/player_add.dart';
import 'package:zoc9/player_add_and_team_setup_screen.dart';
import 'package:zoc9/player_settlement_screen.dart';
import 'package:zoc9/setup_team.dart';
import 'package:zoc9/team_add.dart';

import 'game_progress_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(VolleyballBettingApp());
}

class VolleyballBettingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '족구 내기 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes
    );
  }
}



final routes = {
  '/': (BuildContext context) => MainScreen(),
  '/setup/add-team': (BuildContext context) => TeamAddScreen(),
  '/setup/add-player' : (BuildContext context) => PlayerAddScreen(),
  '/setup' : (BuildContext context) => SetupTeamScreen(),
  '/game': (BuildContext context) => GameProgressScreen(),
  '/settlement': (BuildContext context) => PlayerSettlementScreen()
};