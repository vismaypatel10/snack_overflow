import 'package:flutter/material.dart';
import 'package:snck_overflow/widgets/ctm_mystery_bundles.dart';

class MysteryBundles extends StatefulWidget {
  const MysteryBundles({Key? key}) : super(key: key);

  @override
  State<MysteryBundles> createState() => _MysteryBundlesState();
}

class _MysteryBundlesState extends State<MysteryBundles> {
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
                'Mystery bundles',
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
                  ctm_mystery_bundles(
                      image: 'assets/images/On diet.png',
                      imgText: 'On diet',
                      description: '4-snack pack'),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_mystery_bundles(
                      image: 'assets/images/Date night.png',
                      imgText: 'Date night',
                      description: '6-snack pack'),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_mystery_bundles(
                      image: 'assets/images/Picnics.png',
                      imgText: 'Picnics',
                      description: '8-snack pack'),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
