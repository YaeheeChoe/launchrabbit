import 'package:flutter/material.dart';
import 'package:launchrabbit/MapPage.dart';
import '../colors.dart';

class RestorantWidget extends StatelessWidget {
  // 박스안에 들어가는 식당 정보들
  final String name;
  final String menu;
  final bool isStar;
  final int maxSeats;
  final int seats;
  final double km;
  final String area;

  const RestorantWidget(
      {Key? key,
      required this.area,
      required this.name,
      required this.menu,
      required this.km,
      required this.isStar,
      required this.maxSeats,
      required this.seats})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 컬러도 오렌지색으로 미리 정의해놓음
    Color statusColor = primaryColor;
    Color mainColor = primaryColor;
    bool star = isStar;

    // 시트가 꽉차면 빨강이고, 꽉 안차면 초록
    if (maxSeats - seats > 8) {
      statusColor = safeColor;
    } else if (maxSeats - seats > 4) {
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
    TextStyle kmStyle =
        TextStyle(fontSize: 12, color: mainBlack, fontWeight: FontWeight.w600);
    return GestureDetector( // 식당 위젯 클릭되도록 감싼거
        onTap: () {},   // 여기에 이벤트를 넣으면 식당 위젯 기능이 활성화
        child: Container(   // 식당 위젯 하나가 컨테이너
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),  // 빈공간
          decoration: BoxDecoration(boxShadow: [        // 박스를 꾸민것
            defaultShadow,          // 그림자 효과
            // 흰색, 박스 동그라미 처리
          ], color: mainWhite, borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // 테이블 정보가 Row 하나
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: statusColor,
                        ),
                        Text(seats.toString(), style: statusStyle),
                        Text(
                          '/',
                          style: statusStyle,
                        ),
                        Text(maxSeats.toString(), style: statusStyle),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4)),
                  Text(
                    name,
                    style: nameStyle,
                  ),
                  Padding(padding: EdgeInsets.only(top: 4)),
                  Text(
                    menu,
                    style: menuStyle,
                  ),
                  Padding(padding: EdgeInsets.only(top: 6)),
                  Text(
                    km.toString() + 'km',
                    style: kmStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          //isStar조정
                        },
                        icon: isStar
                            ? Icon(Icons.star, size: 20)
                            : Icon(Icons.star_border, size: 20),
                        color: mainColor,
                      ),
                      Text(
                        '|',
                        style: menuStyle,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MapPage()),
                          );
                        },
                        icon: Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                        color: mainColor,
                      )
                    ],
                  ),
                ]),
          ),
        ));
  }
}
