import 'package:flutter/material.dart';
import 'package:snck_overflow/widgets/stepper.dart';

import '../widgets/ctm_texticon_btn.dart';
import 'edit_profile_screen.dart';

class DefaultProfile extends StatefulWidget {
  const DefaultProfile({Key? key}) : super(key: key);

  @override
  State<DefaultProfile> createState() => _DefaultProfileState();
}

class _DefaultProfileState extends State<DefaultProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 38,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            height: 6,
                            color: const Color(0xfffecf33),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      stepper(
                        color: const Color(0xffedeced),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      stepper(
                        color: const Color(0xffedeced),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      stepper(
                        color: const Color(0xffedeced),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: const Text(
                    'What is your name?',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 72),
                        height: 120,
                        width: 120,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfff7f7f7),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(43),
                          child: Image.asset(
                            'assets/icons/profile_icon.png',
                            height: 33,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 24),
                        child: const Text('user02398423',
                            style: TextStyle(
                              color: Color(0xff554d56),
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'x height',
                            style: TextStyle(
                                color: Color(0xff979197), fontSize: 17),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'x weight',
                            style: TextStyle(
                                color: Color(0xff979197), fontSize: 17),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/location_icon.png',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'unknown',
                            style: TextStyle(
                                color: Color(0xff979197), fontSize: 17),
                          ),
                        ],
                      ),
                      ctm_texticon_btn(
                        btncolor: Color(0xffedeced),
                        btntext: 'Edit',
                        btntextcolor: Color(0xFFee6723),
                        btnicon: 'assets/icons/edit_icon.png',
                        margin: EdgeInsets.only(top: 42, bottom: 16),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditProfile(),
                              ));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
