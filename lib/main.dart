import 'package:flutter/material.dart';
import 'package:launchrabbit/component/ExpandableFab.dart';
import 'package:launchrabbit/component/RestorantWidget.dart';

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
      appBar: null,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 32),
            child: FloatingActionButton(
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
