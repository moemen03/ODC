import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int count=0;
  static CounterCubit get(context)=>BlocProvider.of(context);
  void increment() {
    count++;
    emit(counterplus());
  }
  void decrease() {
    count--;
    emit(counterminus());
  }
}
