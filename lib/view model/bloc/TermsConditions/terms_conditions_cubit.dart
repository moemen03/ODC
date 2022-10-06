import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mqr/model/TermsConditions_model.dart';
import 'package:mqr/view%20model/database/network/end_points.dart';

import '../../../Token.dart';
import '../../database/network/dio_helper.dart';

part 'terms_conditions_state.dart';

class TermsConditionsCubit extends Cubit<TermsConditionsState> {
  TermsConditionsCubit() : super(TermsConditionsInitial());
  static TermsConditionsCubit get(context)=>BlocProvider.of(context);
  termsModel ? dataModel;

  void getData(){
    DioHelper.getData(url: termsEndPoint , token: Token).then((value) {
      dataModel = termsModel.fromJson(value.data);
      emit(termData());
    });
  }
}
