abstract class CounterStates {}

class CounterInitalState extends CounterStates {}

class CounterPlusState extends CounterStates {
  final int counter;

  CounterPlusState(this.counter);
}

class CounterMinsState extends CounterStates {
  final int counter;

  CounterMinsState(this.counter);
}
