import 'package:flutter/material.dart';

class ctm_build_bundle extends StatelessWidget {
  String images;
  String imgtext;
  String description;
  String rating;

  ctm_build_bundle(
      {required this.images,
      required this.imgtext,
      required this.description,
      required this.rating,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xfff7f7f7),
      ),
      margin: EdgeInsets.all(16),
      //color: Colors.red,
      height: 110,
      //width: 358,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            height: 67,
            width: 67,
            //color: Colors.blue,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: AssetImage(images), fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                imgtext,
                style: TextStyle(fontSize: 17, color: Color(0xff554d56)),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 15, color: Color(0xff979197)),
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
                    rating,
                    style: TextStyle(fontSize: 15, color: Color(0xff979197)),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 16,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
