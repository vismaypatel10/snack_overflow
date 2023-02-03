import 'package:flutter/material.dart';
import 'package:snck_overflow/profile_screens/goal_screen.dart';
import 'package:snck_overflow/widgets/ctm_textbutton.dart';

import '../widgets/stepper.dart';
import 'edit_profile_screen.dart';

class ConfirmProfile extends StatefulWidget {
  const ConfirmProfile({Key? key}) : super(key: key);

  @override
  State<ConfirmProfile> createState() => _ConfirmProfileState();
}

class _ConfirmProfileState extends State<ConfirmProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ctm_txtbutton(
        btncolor: Color(0xffee6723),
        btntext: 'Continue',
        btntextcolor: Color(0xFFffffff),
        margin: EdgeInsets.all(16),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GoalScreen(),
              ));
        },
      ),
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
                      stepper(
                        color: const Color(0xfffecf33),
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
                            image: DecorationImage(
                                image: AssetImage('assets/logos/profile.png'))),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 24),
                        child: const Text('Steve Donuto',
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
                            '5’4”',
                            style: TextStyle(
                                color: Color(0xff979197), fontSize: 17),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '128 lbs',
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
                            'San Francisco, CA',
                            style: TextStyle(
                                color: Color(0xff979197), fontSize: 17),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffedeced),
                        ),
                        height: 56,
                        margin: const EdgeInsets.only(top: 42, bottom: 16),
                        width: double.maxFinite,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditProfile(),
                                ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/edit_icon.png',
                                width: 20,
                                height: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Edit',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFFee6723),
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                      ),
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
