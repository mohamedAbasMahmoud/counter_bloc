import 'package:basketball_pointscounter/cubit/state_counter.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit():super(CounterAincrement());
  int teamApoints = 0;
  int teamBpoints = 0;
  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAincrement());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBincrement());
    }
  }
}
