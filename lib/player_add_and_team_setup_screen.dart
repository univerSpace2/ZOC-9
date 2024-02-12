import 'package:flutter/material.dart';

class PlayerAddAndTeamSetupScreen extends StatefulWidget {
  @override
  _PlayerAddAndTeamSetupScreenState createState() => _PlayerAddAndTeamSetupScreenState();
}

class _PlayerAddAndTeamSetupScreenState extends State<PlayerAddAndTeamSetupScreen> {
  List<String> players = [];
  Map<String, List<String>> teams = {};

  void _addPlayer(String playerName) {
    setState(() {
      players.add(playerName);
    });
  }

  void _createTeam(String teamName) {
    setState(() {
      teams[teamName] = [];
    });
  }

  void _addPlayerToTeam(String teamName, String playerName) {
    setState(() {
      if (!teams[teamName]!.contains(playerName)) {
        teams[teamName]!.add(playerName);
      }
    });
  }

  void _showTeamSelectDialog(BuildContext context, String player) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('팀 선택'),
          content: SingleChildScrollView(
            child: ListBody(
              children: teams.keys.map((team) {
                return ListTile(
                  title: Text(team),
                  onTap: () {
                    _addPlayerToTeam(team, player);
                    Navigator.of(context).pop();
                  },
                );
              }).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('플레이어 추가 및 팀 구성'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(players[index]),
                );
              },
            ),
          ),
          TextField(
            onSubmitted: (value) => _addPlayer(value),
            decoration: InputDecoration(
              labelText: '플레이어 이름 입력',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            onSubmitted: (value) => _createTeam(value),
            decoration: InputDecoration(
              labelText: '팀 이름 입력',
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String selectedPlayer = '';
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('플레이어 선택'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: players.map((player) {
                          return ListTile(
                            title: Text(player),
                            onTap: () {
                              selectedPlayer = player;
                              Navigator.of(context).pop();
                              _showTeamSelectDialog(context, selectedPlayer);
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text('취소'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('플레이어를 팀에 추가'),
          ),

// 생성된 팀과 그 팀의 플레이어를 보여주는 리스트 뷰
          Expanded(
            child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (context, index) {
                String teamName = teams.keys.elementAt(index);
                return ExpansionTile(
                  title: Text(teamName),
                  children: teams[teamName]!.map((player) {
                    return ListTile(
                      title: Text(player),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

}

