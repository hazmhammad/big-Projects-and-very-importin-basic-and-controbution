import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/cubit.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class Homelayout extends StatelessWidget {
  var titlecontroller = TextEditingController();
  var timecontroller = TextEditingController();
  var datecontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  var scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {
          if (state is AppInsertDatabaseState) {
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldkey,
            appBar: AppBar(
              title: Text(cubit.title[cubit.currentindex]),
            ),
            body: Center(
              child: ConditionalBuilder(
                condition: state is! AppgetDatabasloadingeState,
                builder: (context) => cubit.screens[cubit.currentindex],
                fallback: (context) => CircularProgressIndicator(),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isbottomSheetShown) {
                  if (formkey.currentState.validate()) {
                    cubit.inserttodatabase(
                        title: titlecontroller.text,
                        date: datecontroller.text,
                        time: timecontroller.text);
                  }
                } else {
                  scaffoldkey.currentState
                      .showBottomSheet((context) => Container(
                            color: Colors.grey[200],
                            padding: EdgeInsets.all(20),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Form(
                                key: formkey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    deflutFormFiled(
                                        controller: titlecontroller,
                                        type: TextInputType.text,
                                        validate: (String value) {
                                          if (value.isEmpty) {
                                            return 'title must be not null';
                                          }
                                          return null;
                                        },
                                        label: 'task title',
                                        prefex: Icons.title),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    deflutFormFiled(
                                        controller: timecontroller,
                                        type: TextInputType.datetime,
                                        //isClicable: false,
                                        ontap: () {
                                          showTimePicker(
                                                  context: context,
                                                  initialTime: TimeOfDay.now())
                                              .then((value) {
                                            timecontroller.text = value
                                                .format(context)
                                                .toString();
                                            print(value.format(context));
                                          });
                                        },
                                        validate: (String value) {
                                          if (value.isEmpty) {
                                            return 'time must be not null';
                                          }
                                          return null;
                                        },
                                        label: 'task time',
                                        prefex: Icons.watch_later),
                                    SizedBox(height: 20),
                                    deflutFormFiled(
                                      controller: datecontroller,
                                      type: TextInputType.datetime,
                                      //isClicable: false,
                                      ontap: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate:
                                              DateTime.parse("2022-05-13"),
                                        ).then((value) {
                                          datecontroller.text =
                                              DateFormat.yMMMd().format(value);
                                        });
                                      },
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'date must be not null';
                                        }
                                        return null;
                                      },
                                      label: 'task date',
                                      prefex: Icons.calendar_today,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ))
                      .closed
                      .then((value) {
                    cubit.changeBottomsheetState(
                        isShow: false, icon: Icons.edit);
                  });
                  cubit.changeBottomsheetState(isShow: true, icon: Icons.add);
                }
              },
              child: Icon(cubit.fabicon),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentindex,
              onTap: (index) {
                cubit.changeindex(index);
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Tasks"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.check_circle_outline), label: "Done"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.archive_outlined), label: "Archived"),
              ],
            ),
          );
        },
      ),
    );
  }
}
