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



// 방문기록 랭킹 페이지
class VisitRankingPage extends StatefulWidget {
const VisitRankingPage({super.key});

  @override
  State<VisitRankingPage> createState() => _VisitRankingState();
}
class _VisitRankingState extends State<VisitRankingPage>
{
  Area _selectedArea = Area.Sinjeongmun;
    void updateArea(Area area) {
      setState(() {
        _selectedArea = area;
      });
  }
  List<RestorantWidget> stars = [
    RestorantWidget(
      name: '금암피순대',
      menu: '피순대 - 순대국밥 - 선지국밥',
      area: '',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
      isStar: true,
    ),
    
  ];
  List<RestorantWidget> test = [
    RestorantWidget(
      name: '리스트가 문제냐?',
      menu: '피순대 - 순대국밥 - 선지국밥',
      area: '',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
      isStar: true,
    ),
  ];
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
                    // 새로운 위젯 (완성하고 list 위젯형식으로 만들어보자..)
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                      decoration: BoxDecoration(
                        boxShadow: [defaultShadow],
                        color: mainWhite,
                        borderRadius: BorderRadius.circular(16),
                      ),
                        child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/images/rank_1.png',
                                  width: 50,
                                  height: 50,
                                  ),
                                  // Icon(
                                  //   Icons.person_outline,
                                  // ),
                                  Text('금암순대 ', style: TextStyle(fontSize: 20)),
                                  Text('방문 횟수: 10', style: TextStyle(fontSize: 20)),
                                ],
                            ),            
                          ),
                        ),   
          ],   
        ),
      ), 
    );
  }}
