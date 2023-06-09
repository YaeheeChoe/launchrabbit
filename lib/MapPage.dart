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
      appBar: AppBar(
        title: Text('Map'),
      ),

      body: Column(children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/mapbg2.png',
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            child: Center(
              child: ListView(
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
                                  builder: (context) => MapPage(),
                                ),
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
                              builder: (context) => MapPage(),
                            ),
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
                  Text('20 min', style: minStyle, textAlign: TextAlign.center),
                  Text('예상 대기시간', style: menuStyle, textAlign: TextAlign.center),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
        ),
      ]),
    );
  }
}
