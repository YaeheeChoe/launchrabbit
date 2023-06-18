import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantRankingWidget extends StatefulWidget {
  final String name;
  final String restorantImagePath;
  final String rankingImagePath;
  final int visitNum;
  final String area;

  const RestorantRankingWidget({
    Key? key,
    required this.name,
    required this.visitNum,
    required this.area,
    required this.restorantImagePath,
    required this.rankingImagePath,
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
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 5),
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

            Container(
              child: Row(children:[
                Image.asset(widget.rankingImagePath,
                  width: 50,
                  height: 50,
                ),
                Padding(padding: EdgeInsets.only(left: 30)),
                Image.asset(widget.restorantImagePath,
                  width: 40,
                  height: 40,
                ),
              ]),
            ), 
            Text(
                  widget.name,
                  style: nameStyle,
                ),

            Text(
                  "방문: " + widget.visitNum.toString(),
                  style: visitNumStyle,
                ),
              
            ],
          ),            
        ),
      ),
    );
  }
}
