import 'package:flutter/material.dart';
import 'package:launchrabbit/colors.dart';
import 'package:launchrabbit/component/ExpandableFab.dart';
import 'package:launchrabbit/component/WidgetList.dart';
import './component/RestorantWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: '안녕! 좋은 점심이야'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];

    List<RestorantWidget> restorantWidgetList = [
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
    void _showAction(BuildContext context, int index) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(_actionTitles[index]),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('CLOSE'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // 앱 바의 그림자 효과 제거
        title: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            '식당찾기',
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true, // 텍스트를 가운데 정렬
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('안녕! 좋은 점심이야~'),
          Text('안녕! 좋은 점심이야!'),
          Text('안녕! 좋은 점심이야~'),
          Expanded(
            child: WidgetList(widgetList: restorantWidgetList),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 32),
            child: FloatingActionButton(
              backgroundColor: seconderyColor,
              onPressed: () {
                // 첫 번째 FloatingActionButton을 누를 때 동작
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          ExpandableFab(
            distance: 80.0,
            children: [
              ActionButton(
                onPressed: () => _showAction(context, 0),
                icon: const Icon(Icons.backspace),
              ),
              ActionButton(
                onPressed: () => _showAction(context, 1),
                icon: const Icon(Icons.person),
              ),
              ActionButton(
                onPressed: () => _showAction(context, 2),
                icon: const Icon(Icons.star),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
