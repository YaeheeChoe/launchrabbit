import 'package:flutter/material.dart';
import 'colors.dart';

class MapPage extends StatelessWidget {
  TextStyle statusStyle = TextStyle(fontSize: 20, color: warningColor);
  TextStyle nameStyle = TextStyle(
    fontSize: 16,
  );
  TextStyle menuStyle = TextStyle(
    fontSize: 12,
    color: coolGray,
  );
  TextStyle minStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: warningColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GestureDetector(
        onTap: () {
          // 영태형 할일 : 모달창 대신 고정된 형태로 수정 (양념 반 후라이드 반)
          // 이게 식당정보 튀어나는 창 (기본이 하이드 모드)
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return Container(
                height: 500, // 모달 창의 높이 설정
                decoration: const BoxDecoration(
                  color: Colors.white, // 모달 배경색
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), // 모달 좌상단 라운딩 처리
                    topRight: Radius.circular(20), // 모달 우상단 라운딩 처리
                  ),
                ), // 모달 창의 배경색 설정
                
                // 식당 상세페이지 안에 있는 모든 정보들
                // 구조는 바꿀 필요없음
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 24)),
                              Text(
                                '무진장 순두부',
                                style: nameStyle,
                              ),
                              Text(
                                '순두부찌개 - 돈까스 - 청국장',
                                style: menuStyle,
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 8)),
                          Row(
                            children: [
                              Icon(
                                Icons.person_outline,
                                color: warningColor,
                              ),
                              Text('38', style: statusStyle),
                              Text(
                                '/',
                                style: statusStyle,
                              ),
                              Text('40', style: statusStyle),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.star_border, size: 20),
                            color: primaryColor,
                          ),
                          Text(
                            '|',
                            style: menuStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MapPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  size: 20,
                                ),
                                color: primaryColor,
                              ),
                              Text('1.2km')
                            ],
                          ),
                          Text(
                            '|',
                            style: menuStyle,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapPage()),
                              );
                            },
                            icon: Icon(
                              Icons.phone,
                              size: 20,
                            ),
                            color: primaryColor,
                          )
                        ],
                      ), //여기까지 아이콘 버튼
                      Text('20 min', style: minStyle),
                      Text('예상 대기시간', style: menuStyle),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/dubu.png'),
                            Padding(padding: EdgeInsets.only(left: 16)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('무진장 순두부', style: nameStyle),
                                Padding(padding: EdgeInsets.only(top: 4)),
                                Text(
                                  '무진장 순두부의 대표메뉴',
                                  style: menuStyle,
                                ),
                                Padding(padding: EdgeInsets.only(top: 4)),
                                Text('8000\\'),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/dubu2.png'),
                            Padding(padding: EdgeInsets.only(left: 16)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('버섯 순두부', style: nameStyle),
                                Padding(padding: EdgeInsets.only(top: 4)),
                                Text(
                                  '무진장 순두부의 버섯메뉴',
                                  style: menuStyle,
                                ),
                                Padding(padding: EdgeInsets.only(top: 4)),
                                Text('8000\\'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/mapbg2.png'),
            ),
          ),
        ),
      ),
    );
  }
}
