import 'package:flutter/material.dart';

import '../../widgets/ctm_popular_items.dart';

class PeopleNearbyFavorites extends StatefulWidget {
  const PeopleNearbyFavorites({Key? key}) : super(key: key);

  @override
  State<PeopleNearbyFavorites> createState() => _PeopleNearbyFavoritesState();
}

class _PeopleNearbyFavoritesState extends State<PeopleNearbyFavorites> {
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
                'People nearby favorites',
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
                  ctm_popular_items(
                      image: 'assets/images/dalgona_coffee.jpeg',
                      imgText: 'Dalgona coffee',
                      description: 'Korean style',
                      rating: '5.0',
                      time: '20m'),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_popular_items(
                      image: 'assets/images/seeds.jpg',
                      imgText: 'Seeds',
                      description: 'For afternoon tea time',
                      rating: '4.9',
                      time: '32m'),
                  SizedBox(
                    width: 12,
                  ),
                  ctm_popular_items(
                      image: 'assets/images/taiyaki_ice_creem.jpeg',
                      imgText: 'Taiyaki',
                      description: 'Japanese ice cream',
                      rating: '4.9',
                      time: '16m'),
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
