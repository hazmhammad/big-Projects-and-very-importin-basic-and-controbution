// get
// post
// update
// delete

// base url :https://newsapi.org/
// method (url) : v2/top-headlines?
// queries: country=us&category=business&apiKey=2bf524a011644e6684658bdcd12a0eb8
//https://newsapi.org/
//v2/everything?
//q=tesla&from=2021-09-23&sortBy=publishedAt&apiKey=2bf524a011644e6684658bdcd12a0eb8
import 'package:flutter_application_logindesgin/moduels/shop_app/Login/LoginScreen.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.lacal/cache_helper.dart';

void singout(context) {
  CacheHelper.removeData(key: 'token').then((value) {
    if (value) {
      navigateandFinish(context, ShopLoginScreen());
    }
  });
}

void printFullText(String text) {
  final pattern = RegExp('.{1800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

String token = '';
