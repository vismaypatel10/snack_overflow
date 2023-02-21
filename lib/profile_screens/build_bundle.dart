import 'package:flutter/material.dart';
import 'package:snck_overflow/model/select_items_model.dart';
import 'package:snck_overflow/screens/bottom_navigationbar.dart';
import 'package:snck_overflow/screens/Home/home_page.dart';
import 'package:snck_overflow/widgets/ctm_build_bundle.dart';
import 'package:snck_overflow/widgets/ctm_select_items.dart';

import '../widgets/ctm_textbutton.dart';
import '../widgets/stepper.dart';
import 'edit_bundle.dart';

class BuildBundle extends StatefulWidget {
  const BuildBundle({Key? key}) : super(key: key);

  @override
  State<BuildBundle> createState() => _BuildBundleState();
}

class _BuildBundleState extends State<BuildBundle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 224,
        width: double.maxFinite,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 5, spreadRadius: 5.0)
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              ctm_txtbutton(
                btncolor: Color(0xffee6723),
                btntext: 'Save and Publish to Market',
                btntextcolor: Color(0xFFffffff),
                margin: EdgeInsets.only(
                  top: 16,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNaviBar(NewIndex: 0),
                    ),
                    (route) => false,
                  );
                },
              ),
              ctm_txtbutton(
                btncolor: Color(0xffedeced),
                btntext: 'Save to my collection only',
                btntextcolor: Color(0xFFee6723),
                margin: EdgeInsets.only(top: 16),
                onPressed: () {
                  //   Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => BottomNaviBar(NewIndex: ),
                  //     ),
                  //     (route) => false,
                  //   );
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                child: Text(
                  'If you publish to Market, you’ll got 10 tokens. You can use\n                    tokens for discount in the future.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(
                        0xff979197,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 38,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      stepper(
                        color: const Color(0xffedeced),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      stepper(
                        color: const Color(0xffedeced),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      stepper(
                        color: const Color(0xffedeced),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      stepper(
                        color: const Color(0xfffecf33),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: const Text(
                    'Build a snack bundle',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  //color: Colors.blue,
                  height: 152,
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xffedeced),
                            width: 2,
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Colors.grey.shade200,
                          //       blurRadius: 5,
                          //       spreadRadius: 5.0)
                          // ]
                        ),
                        margin:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 2,
                              children: [
                                ctm_select_items(
                                    images:
                                        'assets/images/dalgona_coffee.jpeg'),
                                ctm_select_items(
                                    images:
                                        'assets/images/taiyaki_ice_creem.jpeg'),
                                ctm_select_items(
                                    images: 'assets/images/shaved_ice.jpeg'),
                                ctm_select_items(
                                    images:
                                        'assets/images/strawberry_chocolate.jpeg'),
                              ]),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Untitled bundle',
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff554d56)),
                          ),
                          Text(
                            'No description',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff979197)),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditBundle(),
                              ));
                        },
                        child: Image.asset(
                          'assets/icons/bundlename_edit_icon.png',
                          height: 25,
                          width: 25,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                ),
                ctm_build_bundle(
                    images: 'assets/images/dalgona_coffee.jpeg',
                    imgtext: 'Dalgona coffee',
                    rating: '5.0',
                    description: 'Korean style'),
                ctm_build_bundle(
                    images: 'assets/images/taiyaki_ice_creem.jpeg',
                    imgtext: 'Taiyaki ice cream',
                    rating: '4.8',
                    description: 'Classic Japanese ice cream'),
                ctm_build_bundle(
                    images: 'assets/images/shaved_ice.jpeg',
                    imgtext: 'Shaved ice with coffee',
                    rating: '5.0',
                    description:
                        'ice-based desserts made of fine\nshavings of ice'),
                ctm_build_bundle(
                    images: 'assets/images/strawberry_chocolate.jpeg',
                    imgtext: 'Strawberry in Chocolate',
                    rating: '4.7',
                    description:
                        'Smooth blend of real strawberries\nand delicious cocoa'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
