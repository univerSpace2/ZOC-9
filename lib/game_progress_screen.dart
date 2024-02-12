import 'package:flutter/material.dart';
class GameProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 게임 진행 화면 구현
    return Scaffold(
      appBar: AppBar(
        title: Text('게임 진행'),
      ),
      body: Column(
        children: <Widget>[
          Text('게임 진행 화면입니다.'),
          OutlinedButton(onPressed: (){
            Navigator.popUntil(context, ModalRoute.withName('/'));
          }, child: Text("게임 끝내기"))

        ],
      ),
    );
  }
}

