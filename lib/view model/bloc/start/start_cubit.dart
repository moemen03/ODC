import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mqr/view/pages/news/News.dart';
import 'package:mqr/view/pages/settings/settings.dart';

import '../../../view/pages/home/Home_page.dart';

part 'start_state.dart';

class StartCubit extends Cubit<StartState> {
  StartCubit() : super(StartInitial());
  static StartCubit get(context)=>BlocProvider.of(context);
  int current_index=0;
  List<Widget> Screens=[
    Home_page(),
    News_page(),
    settings(),
  ];
  void change_cr_index(int index)
  {
    current_index=index;
    emit(change_cur_index());
  }

}
