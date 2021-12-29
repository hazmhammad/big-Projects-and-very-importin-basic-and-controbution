import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/layout/news_app/cubit/states.dart';
// import 'package:flutter_application_logindesgin/moduels/SettingScreen/settingscreen.dart';
// import 'package:flutter_application_logindesgin/moduels/business/businessScreen%20.dart';
import 'package:flutter_application_logindesgin/moduels/news_app/business/businessScreen%20.dart';
import 'package:flutter_application_logindesgin/moduels/news_app/science/scinceScreen.dart';
import 'package:flutter_application_logindesgin/moduels/news_app/sports/sportsScreen.dart';
// import 'package:flutter_application_logindesgin/moduels/science/scinceScreen.dart';
// import 'package:flutter_application_logindesgin/moduels/sports/sportsScreen.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.remaot/dio-helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.business,
        ),
        label: 'business'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.sports,
        ),
        label: 'sports'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.science,
        ),
        label: 'science'),
    // BottomNavigationBarItem(
    //     icon: Icon(
    //       Icons.settings,
    //     ),
    //     label: 'setting'),
  ];
  List<Widget> screens = [
    SportsScreen(),
    BusinessScreen(),
    ScinceScreen(),

    //SettingScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    if (index == 1) {
      getSport();
    }
    if (index == 2) {
      getScince();
    }
    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];
  void getbusiness() {
    emit(NewGetBusinessLoadingState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apiKey': '2bf524a011644e6684658bdcd12a0eb8',
    }).then((value) {
      business = value.data['articles'];
      print(business[0]['urlToImage']);
      emit(NewGetBusinessSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewGetBusinessErrorState(error.toString()));
    });
  }

  List<dynamic> Sports = [];
  void getSport() {
    emit(NewGetSportLoadingState());
    if (Sports.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'sports',
        'apiKey': '2bf524a011644e6684658bdcd12a0eb8',
      }).then((value) {
        Sports = value.data['articles'];
        print(Sports[0]['title']);
        emit(NewGetSportSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewGetSportErrorState(error.toString()));
      });
    } else {
      emit(NewGetSportSuccessState());
    }
  }

  List<dynamic> science = [];
  void getScince() {
    emit(NewGetScinceLoadingState());
    if (science.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'science',
        'apiKey': '2bf524a011644e6684658bdcd12a0eb8',
      }).then((value) {
        science = value.data['articles'];
        print(science[0]['title']);
        emit(NewGetScinceSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(NewGetScinceErrorState(error.toString()));
      });
    } else {
      emit(NewGetScinceSuccessState());
    }
  }

  List<dynamic> search = [];
  void getSearch(String value) {
    search = [];
    emit(NewGetSearchLoadingState());
    search = [];

    DioHelper.getData(url: 'v2/everything', query: {
      'q': '$value',
      'apiKey': '2bf524a011644e6684658bdcd12a0eb8',
    }).then((value) {
      search = value.data['articles'];
      print(search[0]['title']);
      emit(NewGetSearchSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(NewGetSearchErrorState(error.toString()));
    });
  }
}
