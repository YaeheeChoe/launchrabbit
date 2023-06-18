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
import 'package:launchrabbit/component/RestorantHistoryWidget.dart';
import 'package:launchrabbit/component/RankingWidgetList.dart';
import 'package:launchrabbit/component/HistoryWidgetList.dart';


class VisitHistory extends StatefulWidget {
const VisitHistory({super.key});

  @override
  State<VisitHistory> createState() => _VisitHistoryState();
}
class _VisitHistoryState extends State<VisitHistory>
{

List<RestorantHistoryWidget> restorantHistoryWidgetList = [
  RestorantHistoryWidget(
    name: '황제 보쌈',
    area: '구정문',
    visitDate: '2023-05-30',
    restorantImagePath: 'assets/images/Sinjeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '먹짜',
    area: '사대부고',
    visitDate: '2023-05-29',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '도꾸이',
    area: '신정문',
    visitDate: '2023-05-28',
    restorantImagePath: 'assets/images/Gujeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '코츠모',
    area: '사대부고',
    visitDate: '2023-05-27',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '피스비',
    area: '구정문',
    visitDate: '2023-05-26',
    restorantImagePath: 'assets/images/Sinjeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '하랑',
    area: '사대부고',
    visitDate: '2023-05-25',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '꽁꼬르드',
    area: '사대부고',
    visitDate:'2023-05-24',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '주인테이블',
    area: '구정문',
    visitDate: '2023-05-23',
    restorantImagePath: 'assets/images/Sinjeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '콩샌',
    area: '신정문',
    visitDate: '2023-05-22',
    restorantImagePath: 'assets/images/Gujeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '야미',
    area: '신정문',
    visitDate: '2023-05-21',
    restorantImagePath: 'assets/images/Gujeongmun.png',
  ),
];

List<RestorantHistoryWidget> nowHistoryWidgetList = [
  RestorantHistoryWidget(
    name: '황제 보쌈',
    area: '구정문',
    visitDate: '2023-05-30',
    restorantImagePath: 'assets/images/Sinjeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '먹짜',
    area: '사대부고',
    visitDate: '2023-05-29',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '도꾸이',
    area: '신정문',
    visitDate: '2023-05-28',
    restorantImagePath: 'assets/images/Gujeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '코츠모',
    area: '사대부고',
    visitDate: '2023-05-27',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '피스비',
    area: '구정문',
    visitDate: '2023-05-26',
    restorantImagePath: 'assets/images/Sinjeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '하랑',
    area: '사대부고',
    visitDate: '2023-05-25',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '꽁꼬르드',
    area: '사대부고',
    visitDate: '2023-05-24',
    restorantImagePath:'assets/images/Sadaebugo.png',
  ),
  RestorantHistoryWidget(
    name: '주인테이블',
    area: '구정문',
    visitDate: '2023-05-23',
    restorantImagePath: 'assets/images/Sinjeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '콩샌',
    area: '신정문',
    visitDate: '2023-05-22',
    restorantImagePath: 'assets/images/Gujeongmun.png',
  ),
  RestorantHistoryWidget(
    name: '야미',
    area: '신정문',
    visitDate: '2023-05-21',
    restorantImagePath: 'assets/images/Gujeongmun.png',
  ),
];


Area _selectedArea = Area.All;
List<String> areaNames = ['신정문', '구정문', '사대부고', '전체'];
    void updateArea(Area area) {
      setState(() {
        _selectedArea = area;
      if (_selectedArea == Area.Sinjeongmun) {
        nowHistoryWidgetList = restorantHistoryWidgetList.where((element) {
          return element.area == areaNames[Area.Gujeongmun.index];
        }).toList();
      } else if (_selectedArea == Area.Gujeongmun) {
        nowHistoryWidgetList = restorantHistoryWidgetList.where((element) {
          return element.area == areaNames[Area.Sinjeongmun.index];
        }).toList();
      } else if (_selectedArea == Area.Sadaebugo) {
        nowHistoryWidgetList = restorantHistoryWidgetList.where((element) {
          return element.area == areaNames[Area.Sadaebugo.index];
        }).toList();
      }
      else if (_selectedArea == Area.All) {
        nowHistoryWidgetList = restorantHistoryWidgetList;
      }
      nowHistoryWidgetList.sort((a, b) => b.visitDate.compareTo(a.visitDate));

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
        child: Column(
          children: <Widget>[
              SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AreaButton(
                          imagePath: 'assets/images/all.png',
                          buttonText: '전체',
                          color: _selectedArea == Area.All
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.All);
                          },
                        ),
                        AreaButton(
                          imagePath: 'assets/images/Sinjeongmun.png',
                          buttonText: '구정문',
                          color: _selectedArea == Area.Sinjeongmun
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.Sinjeongmun);
                          },
                        ),
                        AreaButton(
                          imagePath: 'assets/images/Gujeongmun.png',
                          buttonText: '신정문',
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

            Flexible(
                    flex: 6,
                    child: Container(
                        // 목록 스크롤 되도록 설정
                        child: SingleChildScrollView(
                          child: HistoryWidgetList(widgetList: nowHistoryWidgetList),
                        )),
                  ),

          ],
        ),
      ),
    );
  }
}
