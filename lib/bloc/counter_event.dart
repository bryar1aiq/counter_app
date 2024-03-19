part of 'counter_bloc.dart';

sealed class CounterEvent {} /* Sealed gives more functionality than abstract class */

final class CounterIncremented extends CounterEvent {} /* It can't be extended outside the class */

final class CounterDecrement extends CounterEvent {}