import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:snck_overflow/profile_screens/default_screen1.dart';
import 'package:snck_overflow/widgets/ctm_textbutton.dart';

import '../api_services.dart';

class SignUp_Email extends StatefulWidget {
  const SignUp_Email({Key? key}) : super(key: key);

  @override
  State<SignUp_Email> createState() => _SignUp_EmailState();
}

class _SignUp_EmailState extends State<SignUp_Email> {
  final _formkey = GlobalKey<FormState>();

  late ApiServices apiServices;

  TextEditingController PasswordController = TextEditingController();
  TextEditingController EmailController = TextEditingController();

  var password = '';
  var email = '';

  @override
  void initState() {
    // TODO: implement initState
    apiServices = ApiServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      'Go with your flow.',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    //margin: const EdgeInsets.only(top: 40),
                    //height: 56,
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
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2)),
                          contentPadding:
                              const EdgeInsets.only(top: 17, bottom: 17),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(17),
                            child: Image.asset(
                              'assets/icons/mail_icon.png',
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                          ),
                          hintText: 'Steve_Donuto@gmail.com',
                          hintStyle: const TextStyle(color: Color(0xffc1bec1))),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    // margin: const EdgeInsets.only(top: 16),
                    //height: 56,
                    decoration: BoxDecoration(
                      //color: const Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(8),
                      //border: Border.all(color: Colors.grey, width: 2)
                    ),
                    child: TextFormField(
                      controller: PasswordController,
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return 'Please Enter Password';
                        }
                        // else if (PasswordController.text.length <= 5) {
                        //   return 'Please Enter valid password';
                        // }
                        return null;
                      },
                      //maxLength: 6,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: const Color(0xfff7f7f7),
                          filled: true,
                          focusColor: Color(0xffffffff),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2)),
                          contentPadding:
                              const EdgeInsets.only(top: 17, bottom: 17),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(17),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/icons/psw_icon.png',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/icons/psw_hide_icon.png',
                              height: 18,
                              width: 18,
                              fit: BoxFit.cover,
                            ),
                          ),
                          hintText: 'password',
                          hintStyle: const TextStyle(color: Color(0xffc1bec1))),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 28),
                    child: const Divider(
                      indent: 80,
                      endIndent: 80,
                      height: 2,
                      thickness: 2,
                      color: Color(0xffedeced),
                    ),
                  ),
                  ctm_txtbutton(
                    btncolor: Color(0xffee6723),
                    btntext: 'Create account',
                    btntextcolor: Color(0xFFffffff),
                    margin: EdgeInsets.only(top: 28),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          // apiServices.userRegister(EmailController.text.trim(),
                          //     PasswordController.text.trim(), context);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DefaultProfile(),
                              ));
                        });
                      }
                    },
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 32, bottom: 130),
                      child: RichText(
                          textAlign: TextAlign.justify,
                          text: const TextSpan(children: [
                            TextSpan(
                                text:
                                    'By clicking "Create account", I agree to SnackOverflow’s',
                                style: TextStyle(
                                    color: Color(0xff979197), fontSize: 15)),
                            TextSpan(
                                text: ' TOS ',
                                style: TextStyle(
                                    color: Color(0xff419bf9), fontSize: 15)),
                            TextSpan(
                                text: ' and',
                                style: TextStyle(
                                    color: Color(0xff979197), fontSize: 15)),
                            TextSpan(
                                text: ' Privacy Policy.',
                                style: TextStyle(
                                    color: Color(0xff419bf9), fontSize: 15)),
                          ])))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
