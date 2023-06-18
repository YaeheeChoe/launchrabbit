import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantRankingWidget extends StatefulWidget {
  final String name;
  final String restorantImagePath;
  final int visitNum;
  final String area;

  const RestorantRankingWidget({
    Key? key,
    required this.name,
    required this.visitNum,
    required this.area,
    required this.restorantImagePath,
  }) : super(key: key);

  @override
  _RestorantRankingWidgetState createState() => _RestorantRankingWidgetState();
}

class _RestorantRankingWidgetState extends State<RestorantRankingWidget> {
  Color statusColor = primaryColor;
  Color mainColor = primaryColor;
  bool star = false; // Initialized with a default value

  @override
  Widget build(BuildContext context) {

    // 텍스트 스타일을 미리 정의해놓음
    // 사이즈랑, 컬러 등...
    TextStyle nameStyle = TextStyle(
      fontSize: 20,
    );
    TextStyle visitNumStyle = TextStyle(
      fontSize: 20,
    );

  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => MapPage(),
        ),
      );
    },
    child: 
        Container(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Padding(padding: EdgeInsets.only(
                      left: 12,),
                      child:
                  Text(
                    widget.name,
                    style: nameStyle,
                  ),
                    ),
                  Text(
                        "방문 : " + widget.visitNum.toString(),
                        style: visitNumStyle,
                      ),
                ]),
          ),       
    
    
    );
  }
}
