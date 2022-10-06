import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'no_state.dart';

class NoCubit extends Cubit<NoState> {
  NoCubit() : super(NoInitial());
}
