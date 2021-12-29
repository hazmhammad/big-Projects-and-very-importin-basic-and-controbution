import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/layout/news_app/cubit/cubit.dart';
import 'package:flutter_application_logindesgin/layout/news_app/cubit/states.dart';
import 'package:flutter_application_logindesgin/moduels/news_app/serach/Search.dart';
//import 'package:flutter_application_logindesgin/moduels/serach/Search.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/cubit.dart';
//import 'package:flutter_application_logindesgin/shared/shared.netword/shared.remaot/dio-helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Newsloyout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("News App"),
            actions: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    naniagtTo(context, SearchScreen());
                  }),
              IconButton(
                  icon: Icon(Icons.brightness_4_outlined),
                  onPressed: () {
                    AppCubit.get(context).chaneAppMode();
                  }),
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: cubit.bottomItems,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNavBar(index);
            },
          ),
        );
      },
    );
  }
}
