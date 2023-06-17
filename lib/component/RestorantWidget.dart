import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantWidget extends StatefulWidget {
  final String name;
  final String menu;
  final bool isStar;
  final int maxSeats;
  final int seats;
  final double km;
  final String area;

  const RestorantWidget({
    Key? key,
    required this.area,
    required this.name,
    required this.menu,
    required this.km,
    required this.isStar,
    required this.maxSeats,
    required this.seats,
  }) : super(key: key);

  @override
  _RestorantWidgetState createState() => _RestorantWidgetState();
}

class _RestorantWidgetState extends State<RestorantWidget> {
  Color statusColor = primaryColor;
  Color mainColor = primaryColor;
  bool star = false; // Initialized with a default value

  @override
  void initState() {
    super.initState();
    star = widget.isStar;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.maxSeats - widget.seats > 8) {
      statusColor = safeColor;
    } else if (widget.maxSeats - widget.seats > 4) {
      statusColor = primaryColor;
    } else {
      statusColor = warningColor;
    }

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
  return Container(
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
    );
  }
}
