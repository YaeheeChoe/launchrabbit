import 'package:flutter/material.dart';
import './RestorantWidget.dart';

class WidgetList extends StatelessWidget {
  final List<RestorantWidget> widgetList;
  WidgetList({required this.widgetList});

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