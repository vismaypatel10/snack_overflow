import 'package:flutter/material.dart';

class ctm_mystery_bundles extends StatelessWidget {
  String image;
  String imgText;
  String description;

  ctm_mystery_bundles(
      {required this.image,
      required this.imgText,
      required this.description,
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
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(image),
                    // NetworkImage(
                    //     'https://images.squarespace-cdn.com/content/v1/5cfd217b4ba01400016fb3dd/1633660649624-QV9P9WEGOLLP8WX5CHUU/unsplash-image-X62QwKxlEaw.jpg?format=750w'),
                    fit: BoxFit.cover)),
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
          Text(
            description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff979197)),
          ),
        ],
      ),
    );
  }
}
