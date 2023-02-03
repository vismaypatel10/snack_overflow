import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snck_overflow/onboarding_page.dart';
import 'package:snck_overflow/screens/bottom_navigationbar.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? userId;

  void checkUserLogin() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    userId = sharedPreferences.getString('ID');
    if (userId != null) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNaviBar(NewIndex: 0),
          ));
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
    }
    print('User Id :${userId}');
  }

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () => checkUserLogin());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
              child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/logos/signin-logo.png'))),
        )
        // AnimatedSplashScreen(
        //   splash: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Container(
        //         height: 150,
        //         width: 150,
        //         child: Image.asset('assets/logos/signin-logo.png'),
        //       )
        //     ],
        //   ),
        //   splashIconSize: double.maxFinite,
        //   splashTransition: SplashTransition.fadeTransition,
        //
        //   duration: 1000,
        //   animationDuration: Duration(seconds: 2),
        // ));
        );
  }
}
