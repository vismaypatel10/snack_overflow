import 'package:flutter/material.dart';

class ctm_texticon_btn extends StatelessWidget {
  Color btncolor;
  Color btntextcolor;
  String btntext;
  String btnicon;
  Color? btniconcolor;
  EdgeInsetsGeometry? margin;
  void Function() onPressed;

  ctm_texticon_btn({
    required this.btncolor,
    required this.btntext,
    required this.btntextcolor,
    required this.btnicon,
    this.btniconcolor,
    this.margin,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: btncolor
              //Color(0xffedeced),
              ),
      height: 56,
      margin: margin,
      //const EdgeInsets.only(top: 42, bottom: 16),
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        onPressed: onPressed,
        //     () {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const EditProfile(),
        //       ));
        // },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              btnicon,
              //'assets/icons/edit_icon.png',
              width: 20,
              height: 20,
              color: btniconcolor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              btntext,
              // 'Edit',
              style: TextStyle(
                  fontSize: 17,
                  color: btntextcolor,
                  //Color(0xFFee6723),
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
