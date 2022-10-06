import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mqr/model/Sections_model.dart';
import '../../../Token.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context)=>BlocProvider.of(context);
  SectionsModel ? dataModel;

  void getData(){
     DioHelper.getData(url: sectionEndPoint , token: Token).then((value) {
      dataModel = SectionsModel.fromJson(value.data);
      emit(SectionsData());
    });
  }
}
