import 'package:flutter/material.dart';

class TeamAddScreen extends StatefulWidget {
  @override
  _TeamAddScreenState createState() => _TeamAddScreenState();
}

class _TeamAddScreenState extends State<TeamAddScreen>{
  List<String> players = [];
  Map<String, List<String>> teams = {};

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title:Text('팀 추가 화면')
        ),
        body: Column(
          children: <Widget>[
            Text('팀 추가 화면입니다.'),
            OutlinedButton(onPressed: (){
              Navigator.pushNamed(context, '/setup/add-player');
            }, child: Text("플레이어 추가하기"))

          ],
        )
    );
  }
}