import 'dart:async';
import 'package:flutter/material.dart';
import 'package:skripsi1/home.dart';
import 'package:skripsi1/splashscreen.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenstate createState() => _splashscreenstate();
}

class _splashscreenstate extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/gambar.png',
              height: 200,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Hukum Perlindungan Anak',
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.grey[700]!,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
            )
          ],
        ),
      ),
    );
  }
}
