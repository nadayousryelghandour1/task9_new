import 'package:flutter_application_1/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamAIncrement({required String team, required int buttonNum}) {
    if (team == 'A') {
      teamAPoints += buttonNum;
      emit(CounterAIncrement());
    } else {
      teamBPoints += buttonNum;
      emit(CounterBIncrement());
    }
  }

  void teamADecrement({required String team, required int buttonNum}) {
    if (team == 'A') {
      teamAPoints -= buttonNum;
      emit(CounterAIncrement());
    } else {
      teamBPoints -= buttonNum;
      emit(CounterBIncrement());
    }
  }

  void resetCounter (){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterReset());
  }
}
