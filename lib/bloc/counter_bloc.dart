import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent {} /* Sealed gives more functionality than abstract class */

final class CounterIncremented extends CounterEvent {} /* It can't be extended outside the class */

final class CounterDecrement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecrement>((event, emit) {
      state > 0 ? emit(state - 1) : emit(state - 0);
    });
  }
}
