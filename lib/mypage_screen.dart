// lib/screens/first_screen.dart
import 'package:flutter/material.dart';
import 'visitHistory_screen.dart';
import 'star_screen.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '메뉴',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 방문 기록 버튼
            Container(
              width: 220,
              height: 80,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => VisitHistory(),
                      ),
                    );
                  },
                  child: Text(
                    '방문 기록',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
            ),

            // 즐겨찾기 버튼
            Container(
              width: 220,
              height: 80,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => StarPage(),
                      ),
                    );
                  },
                  child: Text(
                    '즐겨찾기',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
            ),

            // 나가기 버튼
            Container(
              width: 220,
              height: 80,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text(
                    '나가기',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
