import 'package:flutter/material.dart';
import 'package:snck_overflow/screens/sign_in.dart';
import 'package:snck_overflow/screens/signup_email.dart';
import 'package:snck_overflow/widgets/ctm_textbutton.dart';

import '../widgets/ctm_social_btn.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage('assets/images/signin_bg.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(125, 165, 125, 144.7),
                      height: 125,
                      width: 140,
                      decoration: const BoxDecoration(
                          //color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage('assets/logos/app-logo.png'))),
                      //child: Image.asset('logos/app-logo@3x.png'),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        ctm_social_btn(
                          btn_image: 'assets/logos/facebook-logo.png',
                          btn_text: 'Sign In with Facebook',
                          btn_color: const Color(0xFF1877f2),
                          btn_text_color: Colors.white,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ctm_social_btn(
                          btn_image: 'assets/logos/google-logo.png',
                          btn_text: 'Sign In with Google',
                          btn_color: Colors.white,
                          btn_text_color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ctm_social_btn(
                          btn_image: 'assets/logos/gmail_icon.png',
                          btn_text: 'Sign In with Mail',
                          btn_color: Colors.black,
                          btn_text_color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignIn(),
                                ));
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 12),
                    child: const Divider(
                      indent: 80,
                      endIndent: 80,
                      height: 2,
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  ctm_txtbutton(
                    btncolor: Colors.white,
                    btntext: 'Sign up with Email',
                    btntextcolor: Color(0xFFee6723),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp_Email(),
                          ));
                    },
                    margin: const EdgeInsets.all(16),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
