import 'package:flutter/material.dart';
import 'onboard.dart'; // onboard 위젯을 사용하기 위한 임포트
import 'package:flutter_spinkit/flutter_spinkit.dart'; // 로딩 애니메이션

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _navigateToonboard();
  }

  _navigateToonboard() async {
    await Future.delayed(const Duration(seconds: 5), () { // 5초 후 onboard 위젯으로 이동
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.music_note,
              size: 100,
              color: Colors.white,
            ), // 큰 음표 모양
            SizedBox(
              height: 20,
            ), // 간격 조절
            Text(
              'Perfect\nBeat',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ), // 헤드라인
            SizedBox(
              height: 20,
            ),
            Container(
              width: 1.0,
              height: 100.0,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '연주한 곡이 악보와\n얼마나 비슷한지 알려드려요!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ), // 앱 부가 설명
            ),
            SizedBox(
              height: 100,
            ),
            SpinKitRipple(color: Colors.white),
          ], // 로딩 애니메이션
        ),
      ),
    );
  }
}
