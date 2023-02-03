import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snck_overflow/profile_screens/confirm_profile_screen.dart';
import 'package:snck_overflow/screens/signup_email.dart';
import 'package:snck_overflow/widgets/ctm_textbutton.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ctm_txtbutton(
        btncolor: Color(0xffee6723),
        btntext: 'Confirm',
        btntextcolor: Color(0xFFffffff),
        margin: EdgeInsets.all(16),
        onPressed: () {
          CustomToast(context);

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ConfirmProfile(),
              ));
        },
      ),
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          'assets/icons/cancel_icon.png',
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        )),
                    const Text(
                      'Edit personal info',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff554d56)),
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/cancel_icon.png',
                          height: 25,
                          width: 25,
                          color: Colors.transparent,
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'First name',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 56,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff7f7f7),
                                    borderRadius: BorderRadius.circular(8),
                                    // border: Border.all(color: Colors.grey, width: 2)
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        fillColor: const Color(0xfff7f7f7),
                                        filled: true,
                                        focusColor: Color(0xffffffff),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2)),
                                        contentPadding: const EdgeInsets.only(
                                            left: 17,
                                            top: 17,
                                            bottom: 17,
                                            right: 17),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        hintText: 'Snackie',
                                        hintStyle: const TextStyle(
                                            color: Color(0xffc1bec1))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Last name',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  height: 56,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xfff7f7f7),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        fillColor: const Color(0xfff7f7f7),
                                        filled: true,
                                        focusColor: Color(0xffffffff),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2)),
                                        contentPadding: const EdgeInsets.only(
                                            left: 17,
                                            top: 17,
                                            bottom: 17,
                                            right: 17),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        hintText: 'Overflowson',
                                        hintStyle: const TextStyle(
                                            color: Color(0xffc1bec1))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Height',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 56,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: const Color(0xfff7f7f7),
                              borderRadius: BorderRadius.circular(8),
                              // border: Border.all(color: Colors.grey, width: 2)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  fillColor: const Color(0xfff7f7f7),
                                  filled: true,
                                  focusColor: Color(0xffffffff),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2)),
                                  contentPadding: const EdgeInsets.only(
                                      left: 17, top: 17, bottom: 17, right: 17),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  hintText:
                                      'If left as blank, it will be unknown',
                                  hintStyle: const TextStyle(
                                      color: Color(0xffc1bec1))),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 56,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: const Color(0xfff7f7f7),
                              borderRadius: BorderRadius.circular(8),
                              // border: Border.all(color: Colors.grey, width: 2)
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  fillColor: const Color(0xfff7f7f7),
                                  filled: true,
                                  focusColor: Color(0xffffffff),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2)),
                                  contentPadding: const EdgeInsets.only(
                                      left: 17, top: 17, bottom: 17, right: 17),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  hintText:
                                      'If left as blank, it will be unknown',
                                  hintStyle: const TextStyle(
                                      color: Color(0xffc1bec1))),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Where do you live?',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xfff7f7f7),
                              borderRadius: BorderRadius.circular(8),
                              // border: Border.all(color: Colors.grey, width: 2)
                            ),
                            child: TextFormField(
                              maxLines: 6,
                              decoration: InputDecoration(
                                  fillColor: const Color(0xfff7f7f7),
                                  filled: true,
                                  focusColor: Color(0xffffffff),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2)),
                                  contentPadding: const EdgeInsets.only(
                                      left: 17, top: 17, bottom: 17, right: 17),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  hintText:
                                      'If the address is left as blank, your delivery cannot arrive.',
                                  hintStyle: const TextStyle(
                                    color: Color(0xffc1bec1),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

CustomToast(BuildContext context) {
  FToast fToast = FToast();
  fToast.init(context);
  Widget toast = Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: const Color(0xffc8cf2d),
    ),
    height: 48,
    margin: const EdgeInsets.only(
      bottom: 50,
    ),
    //padding: EdgeInsets.symmetric(horizontal: 6),
    width: double.maxFinite,
    child: TextButton(
      onPressed: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => const EditProfile(),
        //     ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/check_icon.png',
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Your profile has been updated!',
            style: TextStyle(
                fontSize: 17,
                color: Color(0xFFffffff),
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    ),
  );
  fToast.showToast(
      child: toast,
      toastDuration: Duration(seconds: 3),
      gravity: ToastGravity.BOTTOM);
}
