// lib/screens/first_screen.dart
import 'package:flutter/material.dart';
import 'package:launchrabbit/component/WidgetList.dart';
import './component/RestorantWidget.dart';

class StarPage extends StatelessWidget {
  List<RestorantWidget> stars = [
    RestorantWidget(
      name: '금암피순대',
      menu: '피순대 - 순대국밥 - 선지국밥',
      area: '',
      km: 0.8,
      maxSeats: 40,
      seats: 38,
      isStar: true,
    ),
    RestorantWidget(
      name: '무진장순두부',
      menu: '순두부찌개 - 돈까스 -청국장',
      area: '사대부고',
      km: 1.8,
      maxSeats: 16,
      seats: 8,
      isStar: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '즐겨찾기 목록',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [WidgetList(widgetList: stars)],
        ),
      ),
    );
  }
}
