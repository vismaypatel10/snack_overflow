import 'package:flutter/material.dart';

class ctm_select_items extends StatelessWidget {
  String images;

  ctm_select_items({required this.images, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xfff7f7f7)),
        height: 220,
        width: 168,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            child: Image.asset(
              images,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
