// lib/screens/first_screen.dart
import 'package:flutter/material.dart';

class StarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '즐겨찾기',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('즐겨찾기 페이지 \n    추후 구현 예정...', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
