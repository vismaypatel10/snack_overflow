import 'package:flutter/material.dart';

import 'ctm_select_items.dart';

class ctm_seasonal_bundles extends StatelessWidget {
  String imgText;
  String rating;
  String time;
  String gridimg1;
  String gridimg2;
  String gridimg3;
  String gridimg4;

  ctm_seasonal_bundles(
      {required this.imgText,
      required this.rating,
      required this.time,
      required this.gridimg1,
      required this.gridimg2,
      required this.gridimg3,
      required this.gridimg4,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: GridView.count(crossAxisCount: 2, children: [
                ctm_select_items(images: gridimg1),
                ctm_select_items(images: gridimg2),
                ctm_select_items(images: gridimg3),
                ctm_select_items(images: gridimg4),
              ]),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            imgText,
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
                rating,
                style: TextStyle(fontSize: 15, color: Color(0xff979197)),
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
                time,
                style: TextStyle(fontSize: 15, color: Color(0xff979197)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
