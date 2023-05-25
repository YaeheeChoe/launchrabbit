import 'package:flutter/material.dart';
import '../colors.dart';

class AreaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          SizedBox(
            width: 150.0,
            child: Container(
                decoration: BoxDecoration(
                  color: seconderyColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Gujeongmun.png',
                      fit: BoxFit.cover,
                    ),
                    Padding(padding: EdgeInsets.only(left: 16.0)),
                    Text(
                      '구정문',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
