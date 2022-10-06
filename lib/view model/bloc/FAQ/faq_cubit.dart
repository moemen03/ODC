import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mqr/model/FaqModel.dart';

import '../../../Token.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());
  static FaqCubit get(context)=>BlocProvider.of(context);
  faqModel ? dataModel;

  void getData(){
    DioHelper.getData(url: faqEndPoint , token: Token).then((value) {
      dataModel = faqModel.fromJson(value.data);
      emit(FaqData());
    });
  }

}
