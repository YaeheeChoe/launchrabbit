import 'package:flutter/material.dart';
import 'colors.dart';

class MapPage extends StatelessWidget {
  TextStyle statusStyle = TextStyle(fontSize: 20, color: warningColor);
  TextStyle nameStyle = TextStyle(
    fontSize: 16,
  );
  TextStyle menuStyle = TextStyle(
    fontSize: 12,
    color: textGray,
  );
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 500, // 모달 창의 높이 설정
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0), // 원하는 라운드 값 설정
          ), // 모달 창의 배경색 설정
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
                          MaterialPageRoute(builder: (context) => MapPage()),
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
                Text('20min'),
                Text('예상 대기시간'),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GestureDetector(
        onTap: () {
          _showModalBottomSheet(context); // 탭 시 모달 창 표시
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
