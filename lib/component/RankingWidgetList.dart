import 'package:flutter/material.dart';
import './RestorantRankingWidget.dart';

class RankingWidgetList extends StatelessWidget {
  final List<RestorantRankingWidget> widgetList;
  RankingWidgetList({required this.widgetList});

  @override
  Widget build(BuildContext context) {
    //리스트 뷰다.
    //리스트 뷰란? 일렬로 정렬된 배치,
    return ListView.builder(
      itemCount: widgetList.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(), 
      itemBuilder: (context, index) {
        return widgetList[index];
      },
    );
  }
}
