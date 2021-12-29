//import 'package:flutter_application_logindesgin/moduels/counter/cubit/states.dart';
import 'package:flutter_application_logindesgin/moduels/counter_app/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitalState());

  static CounterCubit get(context) => BlocProvider.of(context);
  int counter = 1;
  void mins() {
    counter--;
    emit(CounterMinsState(counter));
  }

  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }
}
