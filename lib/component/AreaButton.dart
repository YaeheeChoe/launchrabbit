import 'package:flutter/material.dart';
import '../colors.dart';

// 상권 선택 버튼
class AreaButton extends StatelessWidget {
  final String imagePath;       //동그란 이미지
  final String buttonText;       // 신정문,구정문...텍스트
  final Color color;            // 버튼 선택시 변하는 컬러
  final VoidCallback onPressed; // 누르면 뭐 실행할지 함수 받는 변수
  
  AreaButton(
      {required this.imagePath,
      required this.buttonText,
      required this.color,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    // 컨테이너 하나가 버튼 하나씩 감싸고 있음
    return Container(
        padding: EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: onPressed, // 버튼 클릭시 이벤트 발생
          child: Row( // 가로 배치하기 위해 row
            children: [
              SizedBox( // 버튼 크기를 150으로 맞추기 위해서
                width: 150.0,
                // 왜 컨테이너가 다시 한 번더 감싸고있죠?
                child: Container(
                    // 컨테이너의 모양 설정
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(50.0),
                      boxShadow: [defaultShadow],
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Row(   // 이미지랑 텍스트 수평으로 배치
                      children: [
                        Image.asset(  // 동그란 이미지
                          imagePath,
                          fit: BoxFit.cover,  // 이거는 구냥 구글링해라
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
        ));
  }
}
