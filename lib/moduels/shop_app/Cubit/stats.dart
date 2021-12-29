import 'package:flutter_application_logindesgin/modles/shop_app/changefavoritesmodel.dart';
import 'package:flutter_application_logindesgin/modles/shop_app/login_modle.dart';
//import 'package:flutter_application_logindesgin/moduels/shop_app/Login/Cubit/cubit.dart';

abstract class Shopstates {}

class ShopInitalState extends Shopstates {}

class ShopChangBottomNavState extends Shopstates {}

class ShopLoadingHomeDataState extends Shopstates {}

class ShopSuccessHomeDataState extends Shopstates {}

class ShopErrorHomeDataState extends Shopstates {}

class ShopSuccesscategoriesDataState extends Shopstates {}

class ShopErrorcategoriesDataState extends Shopstates {}

class ShopChangeFavoritetState extends Shopstates {}

class ShopSuccessChangeFavoritetState extends Shopstates {
  final ChangeFavoritesModel model;

  ShopSuccessChangeFavoritetState(this.model);
}

class ShopErrorChangeFavoritetState extends Shopstates {}

class ShopSuccessGetFavoritesState extends Shopstates {}

class ShopErrorGetFavoritesState extends Shopstates {}

class ShopLoadingGetFavoritesState extends Shopstates {}

class ShopSuccessUserDataState extends Shopstates {
  final ShoploginModel loginmodel;

  ShopSuccessUserDataState(this.loginmodel);
}

class ShopErrorUserDataState extends Shopstates {}

class ShopLoadingUserDataState extends Shopstates {}
