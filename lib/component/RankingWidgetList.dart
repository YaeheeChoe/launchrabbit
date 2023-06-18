import 'package:flutter/material.dart';
import './RestorantRankingWidget.dart';
import '../colors.dart';

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
          height: 68,
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          decoration: BoxDecoration(
            boxShadow: [defaultShadow],
            color: mainWhite,
            borderRadius: BorderRadius.circular(16),
          ),
          child: 
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              (index < 3 ) ? 
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
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child:Text('4', style: TextStyle(fontSize: 20),
                  )
              ))
              :
              Container(
                    width: 48,
                    padding: EdgeInsets.only(left: 14),
                    child:Text((index+1).toString(), style: TextStyle(fontSize: 20),
                  ))         ,
                  Image.asset(widgetList[index].restorantImagePath,
                  width: 40,
                  height: 40,
                ),
              widgetList[index]
            ],
          ),
        );
      },
    );
  }
}
