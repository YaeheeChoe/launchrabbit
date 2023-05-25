import 'package:flutter/material.dart';
import './RestorantWidget.dart';

class WidgetList extends StatelessWidget {
  final List<RestorantWidget> widgetList;
  WidgetList({required this.widgetList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widgetList.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 5.0,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        return widgetList[index];
      },
    );
  }
}
