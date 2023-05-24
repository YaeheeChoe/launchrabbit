import 'package:flutter/material.dart';
import './RestorantWidget.dart';

class WidgetList extends StatelessWidget {
  final List<Widget> widgetList = [
    RestorantWidget(
      name: '먹짜',
      menu: '돈까스 - 가츠나베 - 샐러드 돈까스',
      area: '',
      km: 0.8,
      maxSeats: 16,
      seats: 15,
      isStar: true,
    ),
    RestorantWidget(
      name: '먹짜',
      menu: '돈까스 - 가츠나베 - 샐러드 돈까스',
      area: '',
      km: 0.8,
      maxSeats: 16,
      seats: 15,
      isStar: true,
    ),
    RestorantWidget(
      name: '먹짜',
      menu: '돈까스 - 가츠나베 - 샐러드 돈까스',
      area: '',
      km: 0.8,
      maxSeats: 16,
      seats: 15,
      isStar: true,
    ),
    RestorantWidget(
      name: '먹짜',
      menu: '돈까스 - 가츠나베 - 샐러드 돈까스',
      area: '',
      km: 0.8,
      maxSeats: 16,
      seats: 15,
      isStar: true,
    ),
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widgetList.length,
      itemBuilder: (context, index) {
        return widgetList[index];
      },
    );
  }
}

/*

          */