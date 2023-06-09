import 'package:flutter/material.dart';
import './RestorantWidget.dart';

class WidgetList extends StatelessWidget {
  final List<RestorantWidget> widgetList;
  WidgetList({required this.widgetList});

  @override
  Widget build(BuildContext context) {
    //그리드뷰다.
    //그리뷰란? 격자모양이란 배치인데,
    return GridView.builder(
      itemCount: widgetList.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      // 스크롤을 안되게 막아놓은건데, 왜 이렇게 했냐면 main에서 이미 스크롤뷰를 정의해놨으니까
      // 이중으로 스크롤되게하면 오류남 ㅇㅇ
      physics: NeverScrollableScrollPhysics(),  
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      // 말하자면, 그냥 그거야 순서대로 하라는 뜻이야
      // 위젯리스트의 리스트 순서대로 빌드하라는 뜻 (정방향으로)
      itemBuilder: (context, index) {
        return widgetList[index];
      },
    );
  }
}
