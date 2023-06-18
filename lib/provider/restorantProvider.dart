import 'package:flutter/material.dart';
import '../component/RestorantWidget.dart';
import '../enums.dart';

class Restorant with ChangeNotifier {
  List<RestorantWidget> _restorantList = [
    RestorantWidget(
      name: '부대통령 뚝배기',
      menu: '제육볶음 - 부대찌개 - 낚지볶음 - 불고기',
      area: '사대부고',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
    ),
    RestorantWidget(
      name: '무진장 순두부',
      menu: '순두부찌개 - 돈까스 - 청국장',
      area: '사대부고',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: 'TEAM레스토랑',
      menu: '파스타 - 빠네',
      area: '구정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '봉이 설렁탕',
      menu: '설렁탕',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '우리집불고기',
      menu: '불고기 - 카레순두부',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
    ),
    RestorantWidget(
      name: '모퉁이 덮밥',
      menu: '모퉁이 덮밥 - 제육덮밥 - 스테이크 덮밥',
      area: '사대부고',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
    ),
    RestorantWidget(
      name: '900달러',
      menu: '피자',
      area: '구정문',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
    ),
    RestorantWidget(
      name: '금암피순대',
      menu: '피순대 - 순대국밥 - 선지국밥',
      area: '신정문',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
    ),
    RestorantWidget(
      name: '염가네 뼈해장국',
      menu: '뼈해장국',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '덕천식당',
      menu: '뼈해장국',
      area: '구정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '오타마',
      menu: '일식',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '치히로',
      menu: '라멘',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '야미',
      menu: '알밥',
      area: '신정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '주인테이블',
      menu: '전골',
      area: '구정문',
      km: 1.2,
      maxSeats: 20,
      seats: 3,
    ),
    RestorantWidget(
      name: '콩샌',
      menu: '샌드위치',
      area: '신정문',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
    ),
    RestorantWidget(
      name: '꽁꼬르드',
      menu: '파스타 - 리조또',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
    ),
    RestorantWidget(
      name: '하랑',
      menu: '연어 - 이자카야',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
    ),
    RestorantWidget(
      name: '코츠모',
      menu: '오코노미야끼',
      area: '사대부고',
      km: 0.6,
      maxSeats: 10,
      seats: 8,
    ),
    RestorantWidget(
      name: '피스비',
      menu: '파스타',
      area: '신정문',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
    ),
    RestorantWidget(
      name: '에모이',
      menu: '쌀국수',
      area: '신정문',
      km: 0.6,
      maxSeats: 16,
      seats: 10,
    ),
    RestorantWidget(
      name: '낙곱새',
      menu: '낙지 - 곱창 - 새우',
      area: '구정문',
      km: 0.8,
      maxSeats: 16,
      seats: 15,
    ),
    RestorantWidget(
      name: '신전떡볶이',
      menu: '신전떡볶이 - 치즈떡볶이 - 주먹밥',
      area: '구정문',
      km: 1.2,
      maxSeats: 16,
      seats: 15,
    ),
    RestorantWidget(
      name: '찌개랑',
      menu: '된장찌개 - 부대찌개',
      area: '구정문',
      km: 0.6,
      maxSeats: 16,
      seats: 6,
    ),
    RestorantWidget(
      name: '황제보쌈',
      menu: '보쌈정식',
      area: '구정문',
      km: 0.8,
      maxSeats: 16,
      seats: 11,
    ),
    // ...
  ];
  List<RestorantWidget> get restorantList => _restorantList;
  List<String> _areaNames = ['신정문', '구정문', '사대부고'];
  List<bool> _isStar = List<bool>.generate(24, (index) => false);
  void toggleStar(RestorantWidget widget){
    var index = _restorantList.indexWhere((e) => e.name.compareTo(widget.name) == 0);
    _isStar[index] = !_isStar[index];
    notifyListeners();
  }
  bool getStar(RestorantWidget widget){
    var index = _restorantList.indexWhere((e) => e.name.compareTo(widget.name) == 0);
    if (index == -1) return false;
    return _isStar[index];
  }
  List<RestorantWidget> getStarredList(Area area){
    Map<int,RestorantWidget> _restorantMap = restorantList.asMap();
    List<RestorantWidget> _starredList = [];
    _restorantMap.forEach((i, e) {
      if(_isStar[i])
      {
        if(e.area == _areaNames[area.index])
        {
          _starredList.add(e);
        }
      };
    });
    return _starredList;
  }
  List<RestorantWidget> getFavoriteList(){
    Map<int,RestorantWidget> _restorantMap = restorantList.asMap();
    List<RestorantWidget> _starredList = [];
    _restorantMap.forEach((i, e) {
      if(_isStar[i])
      {
        _starredList.add(e);
      };
    });
    return _starredList;
  }
  List<RestorantWidget> getList(Area area){
    return restorantList.where((e) => e.area == _areaNames[area.index]).toList();
  }
}