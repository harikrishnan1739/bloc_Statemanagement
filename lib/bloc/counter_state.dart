part of 'counter_bloc.dart';

class CounterState {
  final int count;
  CounterState({required this.count});
}

class InitialStae extends CounterState {
  InitialStae() : super(count: 0);
}
