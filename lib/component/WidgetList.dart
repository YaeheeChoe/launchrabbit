import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  final List<Widget> widgetList = [
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.green,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
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
RestorantWidget(
            name: '먹짜',
            menu: '돈까스 - 가츠나베 - 샐러드 돈까스',
            area: '',
            km: 0.8,
            maxSeats: 16,
            seats: 15,
            isStar: true,
          ),
          */