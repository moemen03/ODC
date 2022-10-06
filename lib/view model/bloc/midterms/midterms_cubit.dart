import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());
  static MidtermsCubit get(context)=>BlocProvider.of(context);

}
