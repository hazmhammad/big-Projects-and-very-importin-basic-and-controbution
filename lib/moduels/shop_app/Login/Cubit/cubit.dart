//import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/login_modle.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Login/Cubit/states.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/endpoint.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.remaot/dio-helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates> {
  ShopLoginCubit() : super(ShopLoginInitialState());
  static ShopLoginCubit get(context) => BlocProvider.of(context);
  // عرفنا الكلاس الي بنستقبل منو البيبانات
  ShoploginModel loginmodle;
  void userlogin({
    @required String email,
    @required String password,
  }) {
    emit(ShopLoginLoadingState());
    DioHelper.postData(url: Login, data: {
      'email': email,
      'password': password,
    }).then((value) {
      // هان جبنا الداتا الي من الكلاس
      print(value.data);
      loginmodle = ShoploginModel.fromJson(value.data);
      emit(ShopLoginSuccessState(loginmodle));
    }).catchError((error) {
      emit(ShopLoginErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool ispassword = true;

  void changePasswordVisbility() {
    ispassword = !ispassword;
    suffix =
        ispassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ShopchangepasswordvisbilityState());
  }
}
