import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mqr/Token.dart';
import 'package:mqr/model/lecture_model.dart';
import 'package:mqr/view%20model/database/network/dio_helper.dart';
import 'package:mqr/view%20model/database/network/end_points.dart';

part 'lectures___state.dart';

class LecturesCubit extends Cubit<LecturesState> {
  LecturesCubit() : super(LecturesInitial());
  static LecturesCubit get(context)=>BlocProvider.of(context);
  LectureModel ? dataModel;

  void getData(){
    DioHelper.getData(url: lectureEndPoint , token: Token).then((value) {
      dataModel = LectureModel.fromJson(value.data);
      emit(LecturesData());
    });
  }


}
