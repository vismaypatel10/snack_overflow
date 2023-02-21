import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snck_overflow/screens/Cart/Cart.dart';
import 'package:snck_overflow/widgets/ctm_textbutton.dart';
import 'package:snck_overflow/widgets/ctm_texticon_btn.dart';

import '../screens/bottom_navigationbar.dart';
import 'ctm_select_items.dart';

class ctm_ShowModelBottomSheet extends StatelessWidget {
  const ctm_ShowModelBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.90,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 73,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back_ios_new_rounded)),
                          Text(
                            'Search result detail',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff554d56)),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.transparent,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/baklava.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 212.0, left: 16),
                        child: Text(
                          'Baklava',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 24, bottom: 24),
                            child: Row(
                              children: [
                                Text(
                                  "\$12.99",
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff554d56)),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Image.asset(
                                  'assets/icons/rating_icon.png',
                                  height: 15,
                                  width: 15,
                                ),
                                Text(
                                  ' 5.0',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Image.asset(
                                  'assets/icons/timer_icon.png',
                                  height: 15,
                                  width: 15,
                                ),
                                Text(
                                  ' 31m',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Baklava is a layered pastry dessert made of filo pastry, filled with chopped nuts, and sweetened with syrup or honey. It was one of the most popular sweet pastries of Ottoman cuisine.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff979197)),
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          Text(
                            'Find it in a bundle',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff554d56)),
                          ),
                          SizedBox(
                            height: 36,
                          ),
                          Container(
                            //color: Colors.blue,
                            height: 152,
                            //margin: EdgeInsets.only(top: 40),
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
                                  // margin:
                                  //     EdgeInsets.only(left: 16, right: 16, bottom: 16),
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
                                              images:
                                                  'assets/images/shaved_ice.jpeg'),
                                          ctm_select_items(
                                              images:
                                                  'assets/images/strawberry_chocolate.jpeg'),
                                        ]),
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Turkish tea time',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Color(
                                              0xff554d56,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Authentic Turkish tea and\nsnack bundle',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff979197)),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "\$10.99",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff554d56)),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/icons/rating_icon.png',
                                            height: 15,
                                            width: 15,
                                          ),
                                          Text(
                                            ' 5.0',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            width: 11,
                                          ),
                                          Image.asset(
                                            'assets/icons/timer_icon.png',
                                            height: 15,
                                            width: 15,
                                          ),
                                          Text(
                                            ' 31m',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  'assets/icons/unsaved_icon.png',
                                  height: 25,
                                  width: 25,
                                )
                              ],
                            ),
                          ),
                          ctm_texticon_btn(
                            btncolor: Color(0xffee6723),
                            btntext: 'Add to shopping cart',
                            btntextcolor: Color(0xffffffff),
                            btnicon: 'assets/icons/market_icon.png',
                            btniconcolor: Color(0xffffffff),
                            // margin: EdgeInsets.symmetric(horizontal: 16),
                            onPressed: () {
                              CartPopup(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        BottomNaviBar(NewIndex: 0),
                                  ));
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ctm_texticon_btn(
                            btncolor: Color(0xffedeced),
                            btntext: 'Save to wishlist',
                            btntextcolor: Color(0xffee6723),
                            btnicon: 'assets/icons/save_icon.png',
                            // margin: EdgeInsets.all(16),
                            onPressed: () {
                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => BottomNaviBar(),
                              //     ));
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

CartPopup(BuildContext context) {
  FToast fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xfff69833),
      ),
      // height: 155,
      padding: EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        bottom: 50,
      ),
      //padding: EdgeInsets.symmetric(horizontal: 6),
      width: double.maxFinite,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/icons/market_icon.png',
                height: 25,
                width: 25,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  'Your selected items in shopping cart, check out now.',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ctm_txtbutton(
            btncolor: Color(0x33ffffff),
            btntext: 'Check out now',
            btntextcolor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNaviBar(NewIndex: 2),
                  ));
            },
          )
        ],
      ));
  fToast.showToast(
      child: toast,
      toastDuration: Duration(seconds: 5),
      gravity: ToastGravity.BOTTOM);
}
