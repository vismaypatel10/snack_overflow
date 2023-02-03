import 'package:flutter/material.dart';

class ctm_social_btn extends StatelessWidget {
  String btn_image;
  String btn_text;
  Color btn_color;
  Color btn_text_color;
  void Function()? onPressed;

  ctm_social_btn({
    Key? key,
    required this.btn_image,
    required this.btn_text,
    required this.btn_color,
    required this.btn_text_color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: btn_color,
        //Color(0xFF1877f2),
      ),
      height: 54,
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Image.asset(
              btn_image,
              height: 24,
              width: 24,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              btn_text,
              style: TextStyle(fontSize: 20, color: btn_text_color),
            )
          ],
        ),
      ),
    );
  }
}
