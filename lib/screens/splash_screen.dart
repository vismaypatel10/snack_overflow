import 'dart:async';
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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/images/signin_bg.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 165,
                  width: 180,
                  decoration: const BoxDecoration(
                      //color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('assets/logos/app-logo.png'))),
                  //child: Image.asset('logos/app-logo@3x.png'),
                ),
              ),
            ],
          ),
        ));
  }
}
