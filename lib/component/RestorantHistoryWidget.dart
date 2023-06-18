import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantHistoryWidget extends StatefulWidget {
  final String name;
  final String restorantImagePath;
  final String visitDate;
  final String area;

  const RestorantHistoryWidget({
    Key? key,
    required this.name,
    required this.visitDate,
    required this.area,
    required this.restorantImagePath,
  }) : super(key: key);

  @override
  _RestorantHistoryWidgetState createState() => _RestorantHistoryWidgetState();
}

class _RestorantHistoryWidgetState extends State<RestorantHistoryWidget> {
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
    TextStyle visitDateStyle = TextStyle(
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
              // 방문 날짜
              Text(
                widget.visitDate,
                style: visitDateStyle,
              ),

              // 식당 이름
              Text(
                widget.name,
                style: nameStyle,
              ),
              
              // 상권별 이미지
              Image.asset(widget.restorantImagePath,
                width: 50,
                height: 50,
              ),
            ],
          ),            
        ),
      ),
    );
  }
}
