import 'package:flutter/material.dart';
class PlayerSettlementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 플레이어 정산 화면 구현
    return Scaffold(
      appBar: AppBar(
        title: Text('플레이어 정산'),
      ),
      body: Column(
        children: <Widget>[
          Text('정산 화면입니다.'),
          OutlinedButton(onPressed: (){
            Navigator.popUntil(context, ModalRoute.withName('/'));
          }, child: Text("오늘의 족구 끝내기"))

        ],
      ),
    );
  }
}