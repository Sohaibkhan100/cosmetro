import 'dart:async';

import 'package:cosmetro/constants/color_conatants.dart';
import 'package:cosmetro/pages/home.dart';
import 'package:cosmetro/pages/intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntoPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorConstants.baseColor),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/logo1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
