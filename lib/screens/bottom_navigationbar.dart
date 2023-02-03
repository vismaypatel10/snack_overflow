import 'package:flutter/material.dart';
import 'package:snck_overflow/screens/Home/home_page.dart';

import 'Account/Account.dart';
import 'Market/Market.dart';
import 'Cart/Cart.dart';

class BottomNaviBar extends StatefulWidget {
  int NewIndex;

  BottomNaviBar({required this.NewIndex, Key? key}) : super(key: key);

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  List pages = [
    HomePage(),
    Market(),
    Cart(),
    Account(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    if (widget.NewIndex != null) {
      setState(() {
        currentIndex = widget.NewIndex;
      });
    } else {
      setState(() {
        currentIndex = 0;
      });
    } // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: onTap,
            currentIndex: currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Color(0xffee6723),
            unselectedItemColor: Color(0xff979197),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/home_icon.png',
                    height: 25,
                    width: 25,
                    color: currentIndex == 0
                        ? Color(0xffee6723)
                        : Color(0xff979197),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/market_icon.png',
                    height: 25,
                    width: 25,
                    color: currentIndex == 1
                        ? Color(0xffee6723)
                        : Color(0xff979197),
                  ),
                  label: 'Market'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'
                  //'Wishlist'
                  ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/profile_icon.png',
                    height: 25,
                    width: 25,
                    color: currentIndex == 3
                        ? Color(0xffee6723)
                        : Color(0xff979197),
                  ),
                  label: 'Account'),
            ]));
  }
}
