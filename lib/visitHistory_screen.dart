// lib/screens/first_screen.dart
import 'package:flutter/material.dart';

class VisitHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '방문 기록',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),

      body: Container(
        margin: const EdgeInsets.symmetric(
                horizontal: 10
              ),
        child: ListView(
          children: <Widget> [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 10
              ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('방문 날짜', style: TextStyle(fontSize: 20)),
                  Text('방문한 식당', style: TextStyle(fontSize: 20)),
                  Text('식당 위치', style: TextStyle(fontSize: 20)),
              ],
            ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-27', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-26', style: TextStyle(fontSize: 22)),
                Text('봉이 설렁탕', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-25', style: TextStyle(fontSize: 22)),
                Text('900달러', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-24', style: TextStyle(fontSize: 22)),
                Text('덕천식당', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-23', style: TextStyle(fontSize: 22)),
                Text('오타마', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-22', style: TextStyle(fontSize: 22)),
                Text('치히로', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-21', style: TextStyle(fontSize: 22)),
                Text('야미', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-20', style: TextStyle(fontSize: 22)),
                Text('주인테이블', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-19', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-18', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-17', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-16', style: TextStyle(fontSize: 22)),
                Text('꽁꼬르드', style: TextStyle(fontSize: 22)),
                Text('사대부고', style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-15', style: TextStyle(fontSize: 22)),
                Text('하랑', style: TextStyle(fontSize: 22)),
                Text('사대부고', style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-14', style: TextStyle(fontSize: 22)),
                Text('코츠모', style: TextStyle(fontSize: 22)),
                Text('사대부고', style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-13', style: TextStyle(fontSize: 22)),
                Text('피스비', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-12', style: TextStyle(fontSize: 22)),
                Text('수작', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-11', style: TextStyle(fontSize: 22)),
                Text('The 담다', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-10', style: TextStyle(fontSize: 22)),
                Text('치쿠린', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-09', style: TextStyle(fontSize: 22)),
                Text('모두랑', style: TextStyle(fontSize: 22)),
                Text('사대부고', style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-08', style: TextStyle(fontSize: 22)),
                Text('금암소바', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-07', style: TextStyle(fontSize: 22)),
                Text('돈가스집', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-06', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-05', style: TextStyle(fontSize: 22)),
                Text('태평집', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-04', style: TextStyle(fontSize: 22)),
                Text('카페트럼펫', style: TextStyle(fontSize: 22)),
                Text('사대부고', style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-03', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-02', style: TextStyle(fontSize: 22)),
                Text('빨간손님', style: TextStyle(fontSize: 22)),
                Text('신정문', style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-01', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문', style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
          ],
        ),
      ),

      
    );
  }
}