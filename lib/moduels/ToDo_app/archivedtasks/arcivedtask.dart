import 'package:flutter/material.dart';
// import 'package:flutter_application_logindesgin/moduels/donetasks/donetasks.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/cubit.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArcivedTaskscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).archivedtasks;
        return taskbulider(tasks: tasks);
      },
    );
  }
}
