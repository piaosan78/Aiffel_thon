import 'package:flutter/material.dart';
import 'onboard.dart'; // onboard 위젯을 사용하기 위한 임포트

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
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.music_note,
              size: 500,
            ), // 큰 음표 모양
            SizedBox(
              height: 20,
            ), // 간격 조절
            Text(
              'Your Title Here',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ), // 타이틀
          ],
        ),
      ),
    );
  }
}
