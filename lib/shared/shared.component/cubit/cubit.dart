import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_logindesgin/moduels/ToDo_app/archivedtasks/arcivedtask.dart';
import 'package:flutter_application_logindesgin/moduels/ToDo_app/donetasks/donetasks.dart';
import 'package:flutter_application_logindesgin/moduels/ToDo_app/newtasks/newtask_screen.dart';
// import 'package:flutter_application_logindesgin/moduels/archivedtasks/arcivedtask.dart';
// import 'package:flutter_application_logindesgin/moduels/donetasks/donetasks.dart';
//import 'package:flutter_application_logindesgin/moduels/newtasks/newtask_screen.dart';
//import 'package:flutter_application_logindesgin/moduels/tasks/newtask_screen.dart';
// import 'package:flutter_application_logindesgin/moduels/tasks/newtask_screen.dart';
// import 'package:flutter_application_logindesgin/moduels/tasks/newtask_screen.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/states.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.lacal/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentindex = 0;
  Database database;

  List<Map> newtasks = [];
  List<Map> donetasks = [];
  List<Map> archivedtasks = [];
  bool isbottomSheetShown = false;
  IconData fabicon = Icons.edit;

  List<Widget> screens = [
    NewTaskscreen(),
    DoneTaskscreen(),
    ArcivedTaskscreen(),
  ];
  List<String> title = [
    "new tasks",
    "done tasks",
    "Arcived tasks",
  ];
  void changeindex(int index) {
    currentindex = index;
    emit(AppChangeNavBarState());
  }

  void createDatabase() {
    openDatabase(
      "todo.db",
      version: 1,
      onCreate: (database, version) {
        print("database creaited");
        database
            .execute(
                'CREATE TABLE tasks (id INTEGER  PRIMARY KEY, title TEXT, time TEXT ,date TEXT, status TEXT)')
            .then((value) {
          print("table creaited");
        }).catchError((error) {
          print("Error when creaiting Table ${error.toString()}");
        });
      },
      onOpen: (database) {
        getDataFromDatabase(database);
        print("database opened");
      },
    ).then((value) {
      database = value;
      emit(AppgetDatabaseState());
    });
  }

  inserttodatabase({
    @required title,
    @required date,
    @required time,
  }) async {
    await database.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO tasks(title,time,date,status) VALUES ("$title","$time","$date","new")')
          .then((value) {
        print("$value  inserted sucsseflly");
        emit(AppInsertDatabaseState());

        getDataFromDatabase(database);
        //emit(AppgetDatabaseState());
      }).catchError((error) {
        print("Error when inserting new recored ${error.toString()}");
      });
      return null;
    });
  }

  void getDataFromDatabase(database) {
    newtasks = [];
    donetasks = [];
    archivedtasks = [];
    emit(AppgetDatabasloadingeState());

    database.rawQuery('SELECT * FROM tasks').then((value) {
      value.forEach((element) {
        if (element['status'] == 'new')
          newtasks.add(element);
        else if (element['status'] == 'done')
          donetasks.add(element);
        else
          archivedtasks.add(element);
      });
    });
    emit(AppgetDatabaseState());
    //emit(AppgetDatabasloadingeState());
  }

  void updateData({
    @required String status,
    @required int id,
  }) async {
    database.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?', [
      '$status ',
      id,
    ]).then((value) {
      getDataFromDatabase(database);

      emit(AppUpdateDatabaseState());
    });
  }

  void changeBottomsheetState({
    @required bool isShow,
    @required IconData icon,
  }) {
    isbottomSheetShown = isShow;
    fabicon = icon;
    emit(AppChangeBottomsheetState());
  }

  void deletData({
    @required int id,
  }) async {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', ['id']).then((value) {
      getDataFromDatabase(database);
      emit(AppDeletDatabaseState());
    });
  }

  bool isDark = false;
  void chaneAppMode({bool fromshared}) {
    if (fromshared != null) {
      isDark = fromshared;
      emit(AppChangeAppThemState());
    } else {
      isDark = !isDark;
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {});
    }
  }
}
