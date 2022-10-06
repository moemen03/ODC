import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mqr/view%20model/database/network/dio_helper.dart';
import 'package:mqr/view%20model/database/network/end_points.dart';
import 'package:mqr/view/pages/home/Home_page.dart';
import 'package:mqr/view/pages/start.dart';

import '../../../Token.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context)=>BlocProvider.of(context);
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String message = "Login";

  void login(context) {
    var json = {
      "email": email.text.toString(),
      "password": password.text.toString()
    };
    print(email);
    print(password);
    DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      if (value.statusCode == 200) {
        Token = value.data['data']['accessToken'];
        if (Token != "" && Token != null && Token.isNotEmpty) {
          message = "Success";
          print("");
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => start(),
              )
          );
        }
        else{
          message = "Token error";
        }
        emit(LoginSuccess());
      }
    }).catchError((e) {
      print(e);
      emit(LoginError());
    });
  }

}
