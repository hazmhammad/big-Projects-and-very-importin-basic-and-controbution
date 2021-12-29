import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_logindesgin/layout/news_app/cubit/cubit.dart';
import 'package:flutter_application_logindesgin/layout/news_app/cubit/states.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/cubit.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  var serachControoler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var list = NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: deflutFormFiled(
                  controller: serachControoler,
                  type: TextInputType.text,
                  onChanged: (value) {
                    NewsCubit.get(context).getSearch(value);
                  },
                  validate: (String value) {
                    if (value.isEmpty) {
                      return 'Search is not to be empty';
                    }
                    return null;
                  },
                  label: 'Search',
                  prefex: Icons.search,
                ),
              ),
              Expanded(child: articalBuilder(list, context, isSearch: true)),
            ],
          ),
        );
      },
    );
  }
}
