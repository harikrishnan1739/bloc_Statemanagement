// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialStae()) {
    //-----------------Increment-bloc---------------
    on<Increment>((event, emit) {
      final currentstateValue = state.count;
      final incrementValue = currentstateValue + 1;
      return emit(CounterState(count: incrementValue));
    });
    //-----------------decrement-bloc---------------
    on<Decrement>((event, emit) {
      final currentstateValue = state.count;
      final decrementValue = currentstateValue - 1;
      return emit(CounterState(count: decrementValue));
    });
  }
}
