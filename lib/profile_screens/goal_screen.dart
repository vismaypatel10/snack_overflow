import 'package:flutter/material.dart';
import 'package:snck_overflow/profile_screens/confirm_profile_screen.dart';
import 'package:snck_overflow/profile_screens/select_item_screen.dart';
import 'package:snck_overflow/widgets/ctm_textbutton.dart';

import '../widgets/stepper.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int value = 0;

  Widget CustomRadioButton(String text, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xfff7f7f7),
      ),
      height: 56,
      margin: const EdgeInsets.only(
        top: 16,
      ),
      width: double.maxFinite,
      child: TextButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              value == index
                  ? 'assets/icons/Slt_RadioButton_icon.png'
                  : 'assets/icons/NotSlt_RadioButton_icon.png',
              width: 25,
              height: 25,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF979197),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 160,
        width: double.maxFinite,
        child: Column(
          children: [
            ctm_txtbutton(
              btncolor: Color(0xffee6723),
              btntext: 'Continue',
              btntextcolor: Color(0xFFffffff),
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectItem(),
                    ));
              },
            ),
            ctm_txtbutton(
              btncolor: Color(0xffedeced),
              btntext: 'Back',
              btntextcolor: Color(0xFFee6723),
              margin: const EdgeInsets.all(16),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
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
                        color: const Color(0xffedeced),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
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
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: const Text(
                    'What is your goal?',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                CustomRadioButton('No goal! Just snacking', 1),
                CustomRadioButton('Snacking for party time!', 2),
                CustomRadioButton('Snacking in a healthy way', 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
