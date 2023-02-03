import 'package:flutter/material.dart';

class ctm_txtbutton extends StatelessWidget {
  Color btncolor;
  Color btntextcolor;
  String btntext;
  EdgeInsetsGeometry? margin;
  void Function() onPressed;

  ctm_txtbutton({
    required this.btncolor,
    required this.btntext,
    required this.btntextcolor,
    this.margin,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: btncolor
              //Colors.white,
              ),
      height: 56,
      margin: margin,
      //const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: TextButton(
          onPressed: onPressed,
          //     () {
          //   Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const SignUp_Email(),
          //       ));
          // },
          child: Text(
            btntext,
            //'Sign up with Email',
            style: TextStyle(
                fontSize: 17,
                color: btntextcolor,
                //Color(0xFFee6723),
                fontWeight: FontWeight.w700),
          )),
    );
  }
}
