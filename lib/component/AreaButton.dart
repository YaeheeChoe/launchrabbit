import 'package:flutter/material.dart';
import '../colors.dart';

class AreaButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;

  AreaButton({required this.imagePath, required this.buttonText});
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
                  boxShadow: [defaultShadow],
                ),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                    Padding(padding: EdgeInsets.only(left: 16.0)),
                    Text(
                      buttonText,
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
