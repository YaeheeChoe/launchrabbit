// lib/screens/first_screen.dart
import 'package:flutter/material.dart';
import 'visitHistory_screen.dart';
import 'star_screen.dart';
import 'package:flutter/material.dart';
import 'package:launchrabbit/component/WidgetList.dart';
import './component/RestorantWidget.dart';
import 'package:launchrabbit/main.dart';
import 'enums.dart';
import 'package:launchrabbit/colors.dart';
import 'package:launchrabbit/component/AreaButton.dart';
import 'package:launchrabbit/component/ExpandableFab.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:launchrabbit/component/RestorantWidget.dart';
import 'package:launchrabbit/component/RestorantRankingWidget.dart';
import 'package:launchrabbit/component/RankingWidgetList.dart';



// 방문기록 랭킹 페이지
class VisitRankingPage extends StatefulWidget {
const VisitRankingPage({super.key});

  @override
  State<VisitRankingPage> createState() => _VisitRankingState();
}
class _VisitRankingState extends State<VisitRankingPage>
{

List<RestorantRankingWidget> restorantRankingWidgetList = [
  RestorantRankingWidget(
    name: '황제 보쌈',
    area: '구정문',
    visitNum: 30,
    restorantImagePath: 'assets/images/Sinjeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '먹짜',
    area: '사대부고',
    visitNum: 20,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_2.png',
  ),
  RestorantRankingWidget(
    name: '도꾸이',
    area: '신정문',
    visitNum: 10,
    restorantImagePath: 'assets/images/Gujeongmun.png',
    rankingImagePath: 'assets/images/rank_3.png',
  ),
  RestorantRankingWidget(
    name: '코츠모',
    area: '사대부고',
    visitNum: 9,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '피스비',
    area: '구정문',
    visitNum: 8,
    restorantImagePath: 'assets/images/Sinjeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '하랑',
    area: '사대부고',
    visitNum: 7,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '꽁꼬르드',
    area: '사대부고',
    visitNum: 6,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '주인테이블',
    area: '구정문',
    visitNum: 5,
    restorantImagePath: 'assets/images/Sinjeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '콩샌',
    area: '신정문',
    visitNum: 4,
    restorantImagePath: 'assets/images/Gujeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '야미',
    area: '신정문',
    visitNum: 3,
    restorantImagePath: 'assets/images/Gujeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
];

List<RestorantRankingWidget> nowRankingWidgetList = [
  RestorantRankingWidget(
    name: '황제 보쌈',
    area: '구정문',
    visitNum: 30,
    restorantImagePath: 'assets/images/Sinjeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '먹짜',
    area: '사대부고',
    visitNum: 20,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_2.png',
  ),
  RestorantRankingWidget(
    name: '도꾸이',
    area: '신정문',
    visitNum: 10,
    restorantImagePath: 'assets/images/Gujeongmun.png',
    rankingImagePath: 'assets/images/rank_3.png',
  ),
  RestorantRankingWidget(
    name: '코츠모',
    area: '사대부고',
    visitNum: 9,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '피스비',
    area: '구정문',
    visitNum: 8,
    restorantImagePath: 'assets/images/Sinjeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '하랑',
    area: '사대부고',
    visitNum: 7,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '꽁꼬르드',
    area: '사대부고',
    visitNum: 6,
    restorantImagePath:'assets/images/Sadaebugo.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '주인테이블',
    area: '구정문',
    visitNum: 5,
    restorantImagePath: 'assets/images/Sinjeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '콩샌',
    area: '신정문',
    visitNum: 4,
    restorantImagePath: 'assets/images/Gujeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
  RestorantRankingWidget(
    name: '야미',
    area: '신정문',
    visitNum: 3,
    restorantImagePath: 'assets/images/Gujeongmun.png',
    rankingImagePath: 'assets/images/rank_1.png',
  ),
];

Area _selectedArea = Area.All;
  List<String> areaNames = ['신정문', '구정문', '사대부고', '전체'];
  void updateArea(Area area) {
    setState(() {
    _selectedArea = area;
      if (_selectedArea == Area.Sinjeongmun) {
        nowRankingWidgetList = restorantRankingWidgetList.where((element) {
          return element.area == areaNames[Area.Gujeongmun.index];
        }).toList();
      } else if (_selectedArea == Area.Gujeongmun) {
        nowRankingWidgetList = restorantRankingWidgetList.where((element) {
          return element.area == areaNames[Area.Sinjeongmun.index];
        }).toList();
      } else if (_selectedArea == Area.Sadaebugo) {
        nowRankingWidgetList = restorantRankingWidgetList.where((element) {
          return element.area == areaNames[Area.Sadaebugo.index];
        }).toList();
      }
      else if (_selectedArea == Area.All) {
        nowRankingWidgetList = restorantRankingWidgetList;
      }
      nowRankingWidgetList.sort((a, b) => b.visitNum.compareTo(a.visitNum));
      // nowRankingWidgetList[1].rankingImagePath = 'assets/images/rank_1.png';

  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '방문기록 랭킹',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
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
                  // 방문 기록 랭킹 위젯 클래스 테스트!! -> 성공!
                  Flexible(
                    flex: 6,
                    child: Container(
                        // 목록 스크롤 되도록 설정
                        child: SingleChildScrollView(
                          child: RankingWidgetList(widgetList: nowRankingWidgetList),
                        )),
                  ),
                ],   
              ),
            ), 
          );
        }
      }
