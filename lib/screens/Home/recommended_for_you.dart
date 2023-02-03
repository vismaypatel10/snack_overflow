import 'package:flutter/material.dart';
import 'package:snck_overflow/widgets/ctm_recommend_items.dart';

class RecommendedForYou extends StatefulWidget {
  const RecommendedForYou({Key? key}) : super(key: key);

  @override
  State<RecommendedForYou> createState() => _RecommendedForYouState();
}

class _RecommendedForYouState extends State<RecommendedForYou> {
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
                'Recommended for you',
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
          height: 225,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  ctm_recommend_items(
                      image: 'assets/images/Googie Googie Cookie.png',
                      imgText: 'Googie Googie Cookie',
                      description: 'Good for your teeth.',
                      rating: '4.9',
                      time: '24m'),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_recommend_items(
                      image: 'assets/images/oreo_cereal.jpg',
                      imgText: 'Oreo cereal',
                      description: '3x pleasure',
                      rating: '4.2',
                      time: '12m'),
                  SizedBox(
                    width: 12,
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
