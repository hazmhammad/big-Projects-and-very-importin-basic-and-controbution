//import 'dart:html';

import 'package:flutter_application_logindesgin/modles/shop_app/login_modle.dart';

abstract class ShopLoginStates {}

class ShopLoginInitialState extends ShopLoginStates {}

class ShopLoginLoadingState extends ShopLoginStates {}

class ShopLoginSuccessState extends ShopLoginStates {
  // عملنا هيك عشان نميز بين حالات التسجيل الناجح والغير ناجح
  final ShoploginModel loginModel;

  ShopLoginSuccessState(this.loginModel);
}

class ShopLoginErrorState extends ShopLoginStates {
  final String error;

  ShopLoginErrorState(this.error);
}

class ShopchangepasswordvisbilityState extends ShopLoginStates {}
