//import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/Favorites_model.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/Home_model.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/categories_model.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/changefavoritesmodel.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/login_modle.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/stats.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Login/Cubit/states.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Setting/Setting_Screen.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/categries/categries.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/favorites/favorits_Screen.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/prodects/prodects_Screen.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/constant.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/endpoint.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.remaot/dio-helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCubit extends Cubit<Shopstates> {
  ShopCubit() : super(ShopInitalState());
  static ShopCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreen = [
    ProdectScreen(),
    CategriesScreen(),
    FavoritsScreen(),
    SettingScreen(),
  ];
  void changeBottom(int index) {
    currentIndex = index;
    emit(ShopChangBottomNavState());
  }

  HomeModel homeModel;
  Map<int, bool> favorites = {};
  void getHomeData() {
    emit(ShopLoadingHomeDataState());
    DioHelper.getData(
      url: HOME,
      token: token,
    ).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      print(homeModel.data.banners[0].image);
      print(homeModel.status);

      homeModel.data.products.forEach((element) {
        favorites.addAll({element.id: element.infavorites});
      });

      print(favorites.toString());
      emit(ShopSuccessHomeDataState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorHomeDataState());
    });
  }

  CategoriesModel categoriesModel;
  void getCategories() {
    DioHelper.getData(
      url: GET_categories,
    ).then((value) {
      categoriesModel = CategoriesModel.fromJson(value.data);

      emit(ShopSuccesscategoriesDataState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorcategoriesDataState());
    });
  }

  ChangeFavoritesModel changefavoritesmodel;
  void changeFavorites(int productId) {
    favorites[productId] = !favorites[productId];
    emit(ShopSuccessChangeFavoritetState(changefavoritesmodel));

    DioHelper.postData(
      url: FAVORITES,
      data: {
        'product_id': productId,
      },
      token: token,
    ).then((value) {
      changefavoritesmodel = ChangeFavoritesModel.fromJson(value.data);
      print(value.data);
      if (!changefavoritesmodel.status) {
        favorites[productId] = !favorites[productId];
      } else {
        getFavorites();
      }
      emit(ShopSuccessChangeFavoritetState(changefavoritesmodel));
    }).catchError((error) {
      favorites[productId] = !favorites[productId];

      emit(ShopErrorChangeFavoritetState());
    });
  }

  FavoritesModel favoritesModel;
  void getFavorites() {
    emit(ShopLoadingGetFavoritesState());
    DioHelper.getData(url: FAVORITES, token: token).then((value) {
      emit(ShopSuccessGetFavoritesState());

      favoritesModel = FavoritesModel.fromJson(value.data);
      printFullText(value.data.toString());
      emit(ShopSuccessGetFavoritesState());
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorGetFavoritesState());
    });
  }

  ShoploginModel userModel;
  void getUserData() {
    emit(ShopLoadingGetFavoritesState());
    DioHelper.getData(
      url: PROFILE,
      token: token,
    ).then((value) {
      emit(ShopLoadingUserDataState());

      userModel = ShoploginModel.fromJson(value.data);
      // printFullText(userModel.data.name);
      // printFullText(userModel.data.email);
      // printFullText(userModel.data.phone);

      emit(ShopSuccessUserDataState(userModel));
    }).catchError((error) {
      print(error.toString());
      emit(ShopErrorUserDataState());
    });
  }
}
