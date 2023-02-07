import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snck_overflow/model/login_model.dart';
import 'package:snck_overflow/profile_screens/default_screen1.dart';
import 'package:snck_overflow/screens/bottom_navigationbar.dart';

import 'model/register_model.dart';

class ApiServices {
  var dio = Dio();

  Future<dynamic> userRegister(
      String email, String password, BuildContext context) async {
    try {
      Map<String, dynamic> data = {'user_email': email, 'user_pass': password};
      String pathUrl = 'http://13.52.172.47:3000/auth/register';

      Response response = await dio.post(pathUrl,
          data: data,
          options: Options(headers: {
            "Content-Type": "application/json; charset=utf-8",
          }));
      RegisterModel registerModel = RegisterModel.fromJson(response.data);

      if (response.statusCode == 200) {
        if (registerModel.status = true) {
          print('Successfull');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Successfully registered \nYou can now SignIn'),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(15),
          ));
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const DefaultProfile(),
          //     ));
        } else {}
      } else {
        print('Error');
      }
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response!.data);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.response!.data['message']),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(15),
        ));
      } else {
        print(e.message);
      }
    }
  }

  Future<void> addData(String token, String id, String email) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    var tokenValue = await sharedPreferences.setString(
      'token',
      token,
    );
    var idValue = await sharedPreferences.setString(
      'ID',
      id,
    );
    var emailValue = await sharedPreferences.setString('email', email);
    print(tokenValue);
    print(idValue);
    print(emailValue);
  }

  Future<void> userLogin(
      String email, String password, BuildContext context) async {
    try {
      String pathUrl = 'http://13.52.172.47:3000/auth/login';
      Map<String, dynamic> data = {
        'user_email': email,
        'user_pass': password,
      };

      Response response = await dio.post(pathUrl,
          data: data,
          options: Options(
            headers: {"Content-Type": "application/json; charset=utf-8"},
          ));

      LoginModel loginModel = LoginModel.fromJson(response.data);

      if (response.statusCode == 200) {
        if (loginModel.status == true) {
          print('data: ${response.data}');
          var Token = loginModel.data!.token;
          var ID = loginModel.data!.iD;
          var Email = loginModel.data!.userEmail;
          print('Token: ${Token}');
          print('ID: ${ID}');
          addData(Token.toString(), ID.toString(), Email.toString());
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Login Successfully '),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(15),
          ));
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => BottomNaviBar(NewIndex: 0)),
              (Route route) => false);
        } else {}
      } else {
        print('Error');
      }
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response!.data);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.response!.data['message']),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(15),
        ));
      } else {
        print(e.message);
      }
      // print(e);
    }
  }
}
