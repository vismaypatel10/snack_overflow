import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../widgets/ctm_textbutton.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController EmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  height: 98.8,
                  width: 120,
                  margin:
                      const EdgeInsets.only(top: 102, left: 160, right: 110),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logos/signin-logo.png'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 43.2),
                  child: const Text(
                    'Forgot password',
                    style: const TextStyle(fontSize: 28),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  //margin: const EdgeInsets.only(top: 40),
                  // height: 56,
                  decoration: BoxDecoration(
                    //color: const Color(0xfff7f7f7),
                    borderRadius: BorderRadius.circular(8),
                    //border: Border.all(color: Colors.grey, width: 2)
                  ),
                  child: TextFormField(
                    controller: EmailController,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return 'Please Enter Email ID';
                      } else if (!EmailValidator.validate(email)) {
                        return 'Please Enter valid Email ID';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: const Color(0xfff7f7f7),
                      filled: true,
                      focusColor: Color(0xffffffff),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey, width: 2)),
                      contentPadding:
                          const EdgeInsets.only(top: 17, bottom: 17),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(
                          'assets/icons/mail_icon.png',
                          height: 25,
                          width: 25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      hintText: 'Steve_Donuto@gmail.com',
                    ),
                  ),
                ),
                ctm_txtbutton(
                  margin: EdgeInsets.only(top: 28),
                  btncolor: Color(0xffee6723),
                  btntext: 'Send',
                  btntextcolor: Color(0xFFffffff),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        // ApiServices().userLogin(EmailController.text.trim(),
                        //     PasswordController.text.trim(), context);
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
