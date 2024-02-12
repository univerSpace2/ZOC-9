import 'package:flutter/material.dart';

class PlayerAddScreen extends StatefulWidget {
  @override
  _PlayerAddScreenState createState() => _PlayerAddScreenState();
}

class _PlayerAddScreenState extends State<PlayerAddScreen>{
  List<String> players = [];
  Map<String, List<String>> teams = {};

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title:Text('플레이어 추가 화면')
        ),
        body: Column(
          children: <Widget>[
            Text('플레이어 추가 화면입니다.'),
            OutlinedButton(onPressed: (){
              Navigator.pushNamed(context, '/setup');
            }, child: Text("팀 구성 하기"))

          ],
        )
    );
  }
}