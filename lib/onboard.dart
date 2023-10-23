import 'dart:math';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class onboard extends StatelessWidget {
  const onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 550,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                ),
              ),
              child: const Center(child: Text('This is a new page')),
            ),
            SizedBox(height: 20),

            Slider(value: 0.5, onChanged: (value) {}), // 음악 재생 바
            InkWell(
              onTap: () {
                // 버튼이 탭될 때 실행할 코드
                FocusScope.of(context).requestFocus(FocusNode()); // 키보드 포커스 제거
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter music file',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ), // 음악 파일 입력 칸
            SizedBox(height: 20),
            Text('정확도: 95%'), // 정확도 표시
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context); // 뒤로가기
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // 홈으로 이동하는 로직을 여기에 추가
              },
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.popUntil(
                    context, ModalRoute.withName('/')); // 앱 나가기 (홈 화면으로 이동)
              },
            ),
          ],
        ),
      ),
    );
  }
}
