import 'package:flutter/material.dart';
import 'package:snck_overflow/screens/Home/daily_quests.dart';
import 'package:snck_overflow/screens/Home/popular_items.dart';
import 'package:snck_overflow/screens/Home/recommended_for_you.dart';
import 'package:snck_overflow/screens/Home/seasonal_bundles.dart';

import 'mystery_bundles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 225,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/bg_image_marketplace.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.darken))),
                  child: Container(
                    margin: EdgeInsets.only(top: 100, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/whitelocation_icon.png',
                              height: 20,
                              width: 20,
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Text(
                              'San Francisco, CA',
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffffffff)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Good afternoon.\nTake a break from work.',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff)),
                        )
                      ],
                    ),
                  )),
              DailyQuests(),
              SizedBox(
                height: 40,
              ),
              PopularItems(),
              SizedBox(
                height: 24,
              ),
              RecommendedForYou(),
              SizedBox(
                height: 24,
              ),
              SeasonalBundles(),
              SizedBox(
                height: 24,
              ),
              MysteryBundles(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
