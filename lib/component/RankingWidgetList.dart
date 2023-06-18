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
        return
        Container(
          child: Row(
            children: [
              (index < 4) ? 
              (
                (index ==0 ) ? 
                  Image.asset('assets/images/rank_1.png',
                  width: 50,
                  height: 50,)
                :
                  (index ==1) ?
                    Image.asset('assets/images/rank_2.png',
                    width: 50,
                    height: 50)
                  :
                  (index ==2) ?
                    Image.asset('assets/images/rank_3.png',
                    width: 50,
                    height: 50)
                  :
                    Text('4')
              )
              :
              Text('5')
              ,
              widgetList[index]
            ],
          ),
        );
      },
    );
  }
}
