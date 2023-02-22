import 'package:flutter/material.dart';

import '../../widgets/ctm_seasonal_bundles.dart';

class RecentUsersBundles extends StatefulWidget {
  const RecentUsersBundles({Key? key}) : super(key: key);

  @override
  State<RecentUsersBundles> createState() => _RecentUsersBundlesState();
}

class _RecentUsersBundlesState extends State<RecentUsersBundles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent users’ bundles',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff554d56)),
              ),
              Image.asset(
                'assets/icons/navigate_icon.png',
                height: 36,
                width: 36,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Container(
          height: 171,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  ctm_seasonal_bundles(
                    imgText: 'Japanese s...',
                    rating: '5.0',
                    time: '30m',
                    gridimg1: 'assets/images/mooncake1.jpg',
                    gridimg2: 'assets/images/mooncake2.jpg',
                    gridimg3: 'assets/images/mooncake3.jpg',
                    gridimg4: 'assets/images/mooncake4.jpg',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_seasonal_bundles(
                    imgText: 'Simit lovers',
                    rating: '5.0',
                    time: '32m',
                    gridimg1: 'assets/images/dryfruit1.jpeg',
                    gridimg2: 'assets/images/dryfruit2.jpg',
                    gridimg3: 'assets/images/dryfruit3.jpg',
                    gridimg4: 'assets/images/dryfruit4.jpeg',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_seasonal_bundles(
                    imgText: 'Fruit jelly',
                    rating: '4.3',
                    time: '15m',
                    gridimg1: 'assets/images/nuts1.jpg',
                    gridimg2: 'assets/images/nuts2.jpg',
                    gridimg3: 'assets/images/nuts3.jpeg',
                    gridimg4: 'assets/images/nuts4.jpg',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
