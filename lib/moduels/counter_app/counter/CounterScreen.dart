import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/moduels/counter_app/counter/cubit/cubit.dart';
import 'package:flutter_application_logindesgin/moduels/counter_app/counter/cubit/states.dart';
// import 'package:flutter_application_logindesgin/moduels/counter/cubit/cubit.dart';
// import 'package:flutter_application_logindesgin/moduels/counter/cubit/states.dart';
// import 'package:flutter_application_logindesgin/moduels/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if (state is CounterMinsState) {
            print('mines state  ${state.counter}');
          }
          if (state is CounterPlusState) {
            print('mines state  ${state.counter}');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Counter'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).mins();
                    },
                    child: Text('miues'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "${CounterCubit.get(context).counter}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: Text('Plss'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    // child: Text(
                    //   "",
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 50,
                    //   ),
                    // ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
