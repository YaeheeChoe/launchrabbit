import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantRankingWidget extends StatefulWidget {
  final String name;
  final int visitCount; // 방문횟수
  final int rank;
  final String area;

  const RestorantRankingWidget({
    Key? key,
    required this.area,
    required this.name,
    required this.visitCount,
    required this.rank,
  }) : super(key: key);

  @override
  _RestorantRankingWidgetState createState() => _RestorantRankingWidgetState();
}

class _RestorantRankingWidgetState extends State<RestorantRankingWidget> {
  Color statusColor = primaryColor;
  Color mainColor = primaryColor;
  bool star = false; // Initialized with a default value
  

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 텍스트 스타일을 미리 정의해놓음
    // 사이즈랑, 컬러 등...
    TextStyle statusStyle = TextStyle(
      fontSize: 26,
      color: statusColor,
    );
    TextStyle nameStyle = TextStyle(
      fontSize: 16,
    );
    TextStyle menuStyle = TextStyle(
      fontSize: 12,
      color: textGray,
    );
    TextStyle kmStyle = TextStyle(
      fontSize: 12,
      color: mainBlack,
      fontWeight: FontWeight.w600,
    );

    return GestureDetector(
      
    );
  }
}
