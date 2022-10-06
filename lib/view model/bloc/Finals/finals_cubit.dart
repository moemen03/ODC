import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mqr/model/Exams_model.dart';

import '../../../Token.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());
  static FinalsCubit get(context)=>BlocProvider.of(context);
  ExamsModel ? dataModel;

  void getData(){
    DioHelper.getData(url: examsEndPoint , token: Token).then((value) {
      dataModel = ExamsModel.fromJson(value.data);
      emit(FinalsData());
    });
  }

}
