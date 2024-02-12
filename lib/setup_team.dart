import 'package:flutter/material.dart';

class SetupTeamScreen extends StatefulWidget {
  @override
  _SetupTeamScreenState createState() => _SetupTeamScreenState();
}

class _SetupTeamScreenState extends State<SetupTeamScreen>{
  List<String> players = [];
  Map<String, List<String>> teams = {};

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('팀 구성')
      ),
        body: Column(
          children: <Widget>[
            Text('팀 추가 화면입니다.'),
            OutlinedButton(onPressed: (){
              Navigator.pushNamed(context, '/game');
            }, child: Text("게임 시작"))

          ],
        )
    );
  }
}