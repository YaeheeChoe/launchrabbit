import 'package:flutter/material.dart';
import 'package:launchrabbit/colors.dart';
import 'package:launchrabbit/component/AreaButton.dart';
import 'package:launchrabbit/component/ExpandableFab.dart';
import 'package:launchrabbit/component/WidgetList.dart';
import 'package:launchrabbit/mypage_screen.dart';
import './component/RestorantWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

enum Fragment {
  Home,
  Search,
  Favorite,
  Setting,
}

enum Area {
  Sinjeongmun,
  Gujeongmun,
  Sadaebugo,
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextStyle menuTextStyle = TextStyle(
  fontSize: 20,
  color: mainBlack,
);
TextStyle secondaryTextStyle = TextStyle(
  fontSize: 16,
  color: mainBlack,
);

class _MyHomePageState extends State<MyHomePage> {
  Fragment fragment = Fragment.Home;
  void toggleSearchResult(str) {
    setState(() {
      setState(() {
        if (fragment != Fragment.Search) {
          fragment = Fragment.Search;
          nowWidgetList = restorantWidgetList.where((element) {
            return element.name.contains(str) || element.menu.contains(str);
          }).toList();
        } else {
          fragment = Fragment.Home;
          _hintText = '검색';
          updateArea(Area.Sinjeongmun);
        }
      });
    });
  }

  List<RestorantWidget> restorantWidgetList = [
    RestorantWidget(
      name: '부대통령 뚝배기',
      menu: '제육볶음 - 부대찌개 - 낚지볶음 - 불고기',
      area: '사대부고',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
      isStar: false,
    ),
    RestorantWidget(
      name: '무진장 순두부',
      menu: '순두부찌개 - 돈까스 - 청국장',
      area: '사대부고',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: true,
    ),
    RestorantWidget(
      name: 'TEAM레스토랑',
      menu: '파스타 - 빠네',
      area: '구정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '봉이 설렁탕',
      menu: '설렁탕',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '우리집불고기',
      menu: '불고기 - 카레순두부',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
      isStar: false,
    ),
    RestorantWidget(
      name: '모퉁이 덮밥',
      menu: '모퉁이 덮밥 - 제육덮밥 - 스테이크 덮밥',
      area: '사대부고',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
      isStar: false,
    ),
    RestorantWidget(
      name: '900달러',
      menu: '피자',
      area: '구정문',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
      isStar: false,
    ),
    RestorantWidget(
      name: '금암피순대',
      menu: '피순대 - 순대국밥 - 선지국밥',
      area: '신정문',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
      isStar: true,
    ),
    RestorantWidget(
      name: '염가네 뼈해장국',
      menu: '뼈해장국',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '덕천식당',
      menu: '뼈해장국',
      area: '구정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '오타마',
      menu: '일식',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '치히로',
      menu: '라멘',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '야미',
      menu: '알밥',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '주인테이블',
      menu: '전골',
      area: '구정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '콩샌',
      menu: '샌드위치',
      area: '신정문',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
      isStar: false,
    ),
    RestorantWidget(
      name: '꽁꼬르드',
      menu: '파스타 - 리조또',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
      isStar: false,
    ),
    RestorantWidget(
      name: '하랑',
      menu: '연어 - 이자카야',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
      isStar: false,
    ),
    RestorantWidget(
      name: '코츠모',
      menu: '오코노미야끼',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
      isStar: false,
    ),
    RestorantWidget(
      name: '피스비',
      menu: '파스타',
      area: '신정문',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
      isStar: false,
    ),
    RestorantWidget(
      name: '에모이',
      menu: '쌀국수',
      area: '신정문',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
      isStar: false,
    ),
    RestorantWidget(
      name: '낙곱새',
      menu: '낙지 - 곱창 - 새우',
      area: '구정문',
      km: 0.8,
      maxSeats: 16,
      seats: 15,
      isStar: false,
    ),
    RestorantWidget(
      name: '신전떡볶이',
      menu: '신전떡볶이 - 치즈떡볶이 - 주먹밥',
      area: '구정문',
      km: 1.2,
      maxSeats: 16,
      seats: 15,
      isStar: false,
    ),
    RestorantWidget(
      name: '찌개랑',
      menu: '된장찌개 - 부대찌개',
      area: '구정문',
      km: 0.6,
      maxSeats: 16,
      seats: 6,
      isStar: false,
    ),
    RestorantWidget(
      name: '황제보쌈',
      menu: '보쌈정식',
      area: '구정문',
      km: 0.8,
      maxSeats: 16,
      seats: 11,
      isStar: false,
    ),
    // ...
  ];
  List<RestorantWidget> nowWidgetList = [
    RestorantWidget(
      name: '금암피순대',
      menu: '피순대 - 순대국밥 - 선지국밥',
      area: '신정문',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
      isStar: true,
    ),
    RestorantWidget(
      name: '염가네 뼈해장국',
      menu: '뼈해장국',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
      isStar: false,
    ),
    RestorantWidget(
      name: '콩샌',
      menu: '샌드위치',
      area: '신정문',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
      isStar: false,
    ),
    RestorantWidget(
      name: '에모이',
      menu: '쌀국수',
      area: '신정문',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
      isStar: false,
    ),
  ];
  Area _selectedArea = Area.Sinjeongmun;
  void updateArea(Area area) {
    setState(() {
      _selectedArea = area;
      if (_selectedArea == Area.Sinjeongmun) {
        nowWidgetList = restorantWidgetList.where((element) {
          return element.area == '신정문';
        }).toList();
      } else if (_selectedArea == Area.Gujeongmun) {
        nowWidgetList = restorantWidgetList.where((element) {
          return element.area == '구정문';
        }).toList();
      } else if (_selectedArea == Area.Sadaebugo) {
        nowWidgetList = restorantWidgetList.where((element) {
          return element.area == '사대부고';
        }).toList();
      }
      nowWidgetList.sort((a, b) => a.km.compareTo(b.km));
    });
  }

  TextEditingController _tcontroller = TextEditingController();
  String _hintText = '검색';

  @override
  Widget build(BuildContext context) {
    const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];

    void _showAction(BuildContext context, int index) {
      // 인덱스에 따라 원하는 동작을 수행하도록 구현
      switch (index) {
        case 0:
          // 첫 번째 버튼의 동작
          print('Pressed exit_to_app');
          break;
        case 1:
          // 두 번째 버튼의 동작
          print('Pressed person');
          break;
        case 2:
          // 세 번째 버튼의 동작
          print('Pressed star');
          break;
        default:
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // 앱 바의 그림자 효과 제거
        title: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            '식당찾기',
            style: secondaryTextStyle,
          ),
        ),
        centerTitle: true, // 텍스트를 가운데 정렬
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 8),
              child: Text(
                '안녕! 좋은 점심이야~',
                style: secondaryTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                controller: _tcontroller,
                onSubmitted: (str) {
                  toggleSearchResult(str);
                },
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  fillColor: seconderyColor,
                  prefixIcon: Icon(Icons.search),
                  hintText: _hintText,
                  hintStyle: TextStyle(
                    color: textGray,
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // 원하는 radius 값 설정
                    borderSide: BorderSide.none, // 외곽선 없음
                  ),

                  filled: true, // 배경색 s적용
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
              ),
            ),
            if (fragment != Fragment.Search)
              Padding(
                padding:
                    EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
                child: Text(
                  '상권선택',
                  style: menuTextStyle,
                ),
              ),
            if (fragment != Fragment.Search)
              Flexible(
                flex: 1,
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: 100, // 최소 높이 설정
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AreaButton(
                          imagePath: 'assets/images/Sinjeongmun.png',
                          buttonText: '신정문',
                          color: _selectedArea == Area.Sinjeongmun
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.Sinjeongmun);
                          },
                        ),
                        AreaButton(
                          imagePath: 'assets/images/Gujeongmun.png',
                          buttonText: '구정문',
                          color: _selectedArea == Area.Gujeongmun
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.Gujeongmun);
                          },
                        ),
                        AreaButton(
                          imagePath: 'assets/images/Sadaebugo.png',
                          buttonText: '사대부고',
                          color: _selectedArea == Area.Sadaebugo
                              ? highlightColor
                              : seconderyColor,
                          onPressed: () {
                            updateArea(Area.Sadaebugo);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Padding(
              padding:
                  EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
              child: Text(
                '목록',
                style: menuTextStyle,
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: SingleChildScrollView(
                    child: WidgetList(widgetList: nowWidgetList),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 32),
            child: FloatingActionButton(
              backgroundColor: seconderyColor,
              onPressed: () {
                if (fragment == Fragment.Search) {
                  toggleSearchResult('');
                } else {
                  Navigator.of(context).pop(true);
                }
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 32),
            child: FloatingActionButton(
              backgroundColor: primaryColor,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyPage(),
                  ),
                );
              },
              child: Icon(Icons.menu),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
