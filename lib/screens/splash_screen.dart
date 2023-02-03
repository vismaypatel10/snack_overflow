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
  var userId;

  Future<dynamic> checkId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    userId = sharedPreferences.getString('ID');
    print('User Id :${userId}');
    // if (userId == null) {
    //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
    //     builder: (context) {
    //       return OnBoardingPage();
    //     },
    //   ), (route) => false);
    // } else {
    //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
    //     builder: (context) {
    //       return BottomNaviBar(NewIndex: 0);
    //     },
    //   ), (route) => false);
    // }
  }

  @override
  void initState() {
    // TODO: implement initState
    checkId();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedSplashScreen(
          splash: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/logos/signin-logo.png'),
              )
            ],
          ),
          splashIconSize: double.maxFinite,
          splashTransition: SplashTransition.fadeTransition,
          nextScreen:
              userId == null ? OnBoardingPage() : BottomNaviBar(NewIndex: 0),
          duration: 1000,
          animationDuration: Duration(seconds: 2),
        ));
  }
}
