abstract class NewsStates {}

class NewsInitialState extends NewsStates {}

class NewsBottomNavState extends NewsStates {}

class NewGetBusinessLoadingState extends NewsStates {}

class NewGetBusinessSuccessState extends NewsStates {}

class NewGetBusinessErrorState extends NewsStates {
  final String error;
  NewGetBusinessErrorState(this.error);
}

class NewGetSportLoadingState extends NewsStates {}

class NewGetSportSuccessState extends NewsStates {}

class NewGetSportErrorState extends NewsStates {
  final String error;
  NewGetSportErrorState(this.error);
}

class NewGetScinceLoadingState extends NewsStates {}

class NewGetScinceSuccessState extends NewsStates {}

class NewGetScinceErrorState extends NewsStates {
  final String error;
  NewGetScinceErrorState(this.error);
}

class NewGetSearchLoadingState extends NewsStates {}

class NewGetSearchSuccessState extends NewsStates {}

class NewGetSearchErrorState extends NewsStates {
  final String error;
  NewGetSearchErrorState(this.error);
}
