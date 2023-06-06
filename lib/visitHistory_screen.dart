// lib/screens/first_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:launchrabbit/colors.dart';
import 'package:launchrabbit/component/AreaButton.dart';
import 'package:launchrabbit/component/ExpandableFab.dart';
import 'package:launchrabbit/component/WidgetList.dart';
import 'package:launchrabbit/mypage_screen.dart';
import 'package:launchrabbit/visitRanking_screen.dart';
import './component/RestorantWidget.dart';
import 'package:launchrabbit/main.dart';
import 'enums.dart';


class VisitHistory extends StatefulWidget {
const VisitHistory({super.key});

  @override
  State<VisitHistory> createState() => _VisitHistoryState();
}
class _VisitHistoryState extends State<VisitHistory>
{
  Area _selectedArea = Area.Sinjeongmun;
    void updateArea(Area area) {
      setState(() {
        _selectedArea = area;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 회일 할일:
      // 여기에다 랭킹 아이콘 추가하기
      // 누르면 랭킹 페이지로 이동
      // 새 페이지 생성해서 알잘딱으로 레이아웃 따기...
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '방문 기록',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        //앱바 오른쪽에 아이콘 배치
        actions: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 32),
                child: FloatingActionButton(
                  backgroundColor: primaryColor,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        // 방문기록 랭킹 페이지로 이동
                        builder: (BuildContext context) => VisitRankingPage(),
                      ),
                    );
                  },
                  // 구글 폰트에서 트로피 아이콘 받아옴
                  child: Icon(Icons.emoji_events),
                ),
              ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: <Widget>[
              SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AreaButton(
                          imagePath: 'assets/images/Sinjeongmun.png',
                          buttonText: '신정문',
                          color: _selectedArea == Area.Sinjeongmun
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.Sinjeongmun);
                          },
                        ),
                        AreaButton(
                          imagePath: 'assets/images/Gujeongmun.png',
                          buttonText: '구정문',
                          color: _selectedArea == Area.Gujeongmun
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.Gujeongmun);
                          },
                        ),
                        AreaButton(
                          imagePath: 'assets/images/Sadaebugo.png',
                          buttonText: '사대부고',
                          color: _selectedArea == Area.Sadaebugo
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.Sadaebugo);
                          },
                        ),
                      ],
                    ),
                  ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
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
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-26', style: TextStyle(fontSize: 22)),
                Text('봉이 설렁탕', style: TextStyle(fontSize: 22)),
                Text('신정문',
                    style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-25', style: TextStyle(fontSize: 22)),
                Text('900달러', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-24', style: TextStyle(fontSize: 22)),
                Text('덕천식당', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-23', style: TextStyle(fontSize: 22)),
                Text('오타마', style: TextStyle(fontSize: 22)),
                Text('신정문',
                    style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-22', style: TextStyle(fontSize: 22)),
                Text('치히로', style: TextStyle(fontSize: 22)),
                Text('신정문',
                    style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-21', style: TextStyle(fontSize: 22)),
                Text('야미', style: TextStyle(fontSize: 22)),
                Text('신정문',
                    style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-20', style: TextStyle(fontSize: 22)),
                Text('주인테이블', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-19', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-18', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-17', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-16', style: TextStyle(fontSize: 22)),
                Text('꽁꼬르드', style: TextStyle(fontSize: 22)),
                Text('사대부고',
                    style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-15', style: TextStyle(fontSize: 22)),
                Text('하랑', style: TextStyle(fontSize: 22)),
                Text('사대부고',
                    style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-14', style: TextStyle(fontSize: 22)),
                Text('코츠모', style: TextStyle(fontSize: 22)),
                Text('사대부고',
                    style: TextStyle(fontSize: 23, color: Colors.green)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-13', style: TextStyle(fontSize: 22)),
                Text('피스비', style: TextStyle(fontSize: 22)),
                Text('신정문',
                    style: TextStyle(fontSize: 23, color: Colors.orange)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-06', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-03', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('2023-05-01', style: TextStyle(fontSize: 22)),
                Text('TEAM레스토랑', style: TextStyle(fontSize: 22)),
                Text('구정문',
                    style: TextStyle(fontSize: 23, color: Colors.purple)),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
