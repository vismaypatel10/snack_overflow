import 'package:flutter/material.dart';
import 'package:snck_overflow/widgets/ctm_popular_items.dart';

class PopularItems extends StatefulWidget {
  const PopularItems({Key? key}) : super(key: key);

  @override
  State<PopularItems> createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
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
                'Popular items',
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
          height: 201,
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
                      description: 'Korean style',
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
