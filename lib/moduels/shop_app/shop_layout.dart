import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/cubit.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Cubit/stats.dart';
//import 'package:flutter_application_logindesgin/moduels/shop_app/Login/LoginScreen.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/search/Search_Screen.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
//import 'package:flutter_application_logindesgin/shared/shared.netword/shared.lacal/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Shoplayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, Shopstates>(
      listener: (context, state) {
       
      },
      builder: (context, state) {
        var cubit = ShopCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('Salla'),
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    naniagtTo(
                      context,
                      SearchScreen(),
                    );
                  })
            ],
          ),
          body: cubit.bottomScreen[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.changeBottom(index);
            },
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps,
                  ),
                  label: 'Categores'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'favorite'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: 'settings'),
            ],
          ),
        );
      },
    );
  }
}
