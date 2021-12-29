import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/cubit.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Login/LoginScreen.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_application_logindesgin/layout/home.dart';
//import 'package:flutter_application_logindesgin/layout/news_app/news_loyout.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Onboarding/onboardingScreen.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/shop_layout.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/Bloc_observer.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/constant.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/cubit.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/states.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.lacal/cache_helper.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.remaot/dio-helper.dart';
import 'package:flutter_application_logindesgin/style/thems.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:hexcolor/hexcolor.dart';
import 'layout/news_app/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  Widget widget;

  bool isDark = CacheHelper.getData(key: 'isDark');
  bool onBoarding = CacheHelper.getData(key: 'onBoarding');
  token = CacheHelper.getData(key: 'token');
  print(token);
  if (onBoarding != null) {
    if (token != null)
      widget = Shoplayout();
    else
      widget = ShopLoginScreen();
  } else {
    widget = OnBoardingScreen();
  }

  runApp(MyApp(isDark, widget));
}

class MyApp extends StatelessWidget {
  final bool isDark;
  final Widget startwidget;

  MyApp(this.isDark, this.startwidget);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsCubit()
            ..getbusiness()
            ..getSport()
            ..getScince(),
        ),
        BlocProvider(
            create: (context) => AppCubit()
              ..chaneAppMode(
                fromshared: isDark,
              )),
        BlocProvider(
          create: (context) => ShopCubit()
            ..getHomeData()
            ..getCategories()
            ..getFavorites()
            ..getUserData(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            title: 'Shoping app',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode:
                AppCubit.get(context).isDark ? ThemeMode.light : ThemeMode.dark,
            home: startwidget,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
