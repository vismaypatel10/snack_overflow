import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snck_overflow/model/login_model.dart';
import 'package:snck_overflow/onboarding_page.dart';
import 'package:snck_overflow/screens/Account/recent_purchases.dart';

import '../../widgets/ctm_popular_items.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  void logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear().then((value) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingPage(),
        ),
        (route) => false));
  }

  String? email;
  void getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    email = sharedPreferences.getString('email');
    setState(() {});
  }

  @override
  void initState() {
    getUserData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Account',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          logout();
                        },
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/images/profile_image_account.jpg'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Steve Donuto',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff554d56)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '5’4’’ 128 lbs',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff979197)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '$email',
                          //'${loginModel.data}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff979197)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'San Francisco, CA',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff979197)),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/icons/edit_icon.png',
                    height: 25,
                    width: 25,
                    color: Color(0xffc1bec1),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xfff7f7f7),
                ),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      'assets/icons/token_icon.png',
                      height: 25,
                      width: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '324',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff554d56)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Tokens collected',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979197)),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              RecentPurchases(),
            ],
          ),
        ),
      ),
    );
  }
}
