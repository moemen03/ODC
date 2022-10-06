import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqr/view%20model/bloc/Sections/sections_cubit.dart';

import '../../components/core/card_data_item.dart';

class Sections_page extends StatelessWidget {
  const Sections_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionsCubit()..getData(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
                Icons.arrow_back_ios, color: Colors.deepOrange
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Sections',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {

              },
              child: Icon(
                Icons.filter_alt, color: Colors.deepOrange, size: 40.0,
              ),
            ),
          ],

        ),
        body: BlocConsumer<SectionsCubit, SectionsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            SectionsCubit myCubit = SectionsCubit.get(context);
            return myCubit.dataModel == null ? Center(child: CircularProgressIndicator()) : ListView.builder(
              itemCount: myCubit.dataModel!.data!.length,
              itemBuilder: (context, index) {
                return   cartItem(myCubit.dataModel!.data![index].sectionSubject.toString());

              },
            );
          },
        ),
      ),
    );
  }
}
