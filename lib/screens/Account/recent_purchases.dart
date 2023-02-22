import 'package:flutter/material.dart';

import '../../model/shopping_items_model.dart';
import '../../widgets/ctm_popular_items.dart';

class RecentPurchases extends StatefulWidget {
  const RecentPurchases({Key? key}) : super(key: key);

  @override
  State<RecentPurchases> createState() => _RecentPurchasesState();
}

class _RecentPurchasesState extends State<RecentPurchases> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent purchases',
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
          height: 197,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 16,
            ),
            itemCount: shopping_items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      //margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image: AssetImage(shopping_items[index].images),
                              // NetworkImage(
                              //     'https://images.squarespace-cdn.com/content/v1/5cfd217b4ba01400016fb3dd/1633660649624-QV9P9WEGOLLP8WX5CHUU/unsplash-image-X62QwKxlEaw.jpg?format=750w'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      shopping_items[index].imgtext,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff554d56)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      shopping_items[index].description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff979197)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/rating_icon.png',
                          height: 17,
                          width: 17,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          shopping_items[index].rating,
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff979197)),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Image.asset(
                          'assets/icons/timer_icon.png',
                          height: 17,
                          width: 17,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          shopping_items[index].time,
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff979197)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        )
        // Container(
        //   height: 225,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       Row(
        //         children: [
        //           ctm_popular_items(
        //               image: 'assets/images/dalgona_coffee.jpeg',
        //               imgText: 'Dalgona coffee',
        //               description: 'Korean style',
        //               rating: '5.0',
        //               time: '30m'),
        //           SizedBox(
        //             width: 12,
        //           ),
        //           ctm_popular_items(
        //               image: 'assets/images/samosa_bundle.jpg',
        //               imgText: 'Authentic Samosa',
        //               description: 'Indian fastfood',
        //               rating: '4.5',
        //               time: '10m'),
        //           SizedBox(
        //             width: 12,
        //           ),
        //           ctm_popular_items(
        //               image: 'assets/images/simit.jpeg',
        //               imgText: 'Simit for breakfast',
        //               description: 'Bread',
        //               rating: '3.8',
        //               time: '21m'),
        //           SizedBox(
        //             width: 12,
        //           ),
        //           ctm_popular_items(
        //               image: 'assets/images/taiyaki_ice_creem.jpeg',
        //               imgText: 'Taiyaki ice-cream',
        //               description: 'Japanese ice-creame',
        //               rating: '4.2',
        //               time: '15m'),
        //         ],
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
