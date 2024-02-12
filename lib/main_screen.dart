import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 메인화면 구현
    return Scaffold(
      appBar: AppBar(
        title: Text('족구 내기 앱'),
      ),
      body: Center(
        // 게임 시작하기 버튼,PlayerAddAndTeamSetupScreen() 화면으로 이동
          child: Column(
            children: <Widget>[
              Center(
                child: ElevatedButton(
                  child: Text("게임 시작"),
                  onPressed: (){
                    Navigator.pushNamed(context, '/setup/add-team');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.grey,
                    elevation: 10.0,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                    padding: EdgeInsets.all(24.0),
                    side: BorderSide(
                      color: Colors.black,
                      width: 4.0,
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: Text("정산하기"),
                  onPressed: (){
                    Navigator.pushNamed(context, '/settlement');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.grey,
                    elevation: 10.0,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                    padding: EdgeInsets.all(24.0),
                    side: BorderSide(
                      color: Colors.black,
                      width: 4.0,
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}