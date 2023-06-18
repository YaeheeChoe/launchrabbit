// lib/screens/first_screen.dart
import 'package:flutter/material.dart';
import 'package:launchrabbit/component/WidgetList.dart';
import 'package:provider/provider.dart';
import './component/RestorantWidget.dart';
import './provider/restorantProvider.dart';
class StarPage extends StatelessWidget {
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
          children: [WidgetList(widgetList: context.read<Restorant>().getFavoriteList())],
        ),
      ),
    );
  }
}
