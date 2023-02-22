import 'package:flutter/material.dart';
import 'package:snck_overflow/widgets/ctm_seasonal_bundles.dart';

class SeasonalBundles extends StatefulWidget {
  const SeasonalBundles({Key? key}) : super(key: key);

  @override
  State<SeasonalBundles> createState() => _SeasonalBundlesState();
}

class _SeasonalBundlesState extends State<SeasonalBundles> {
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
                'Seasonal bundles',
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
          height: 174,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  ctm_seasonal_bundles(
                    imgText: 'Mooncakes',
                    rating: '4.7',
                    time: '42m',
                    gridimg1: 'assets/images/mooncake1.jpg',
                    gridimg2: 'assets/images/mooncake2.jpg',
                    gridimg3: 'assets/images/mooncake3.jpg',
                    gridimg4: 'assets/images/mooncake4.jpg',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_seasonal_bundles(
                    imgText: 'Dry fruits',
                    rating: '4.9',
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
                    imgText: 'Nuts',
                    rating: '4.2',
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
