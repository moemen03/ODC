import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../view model/bloc/Finals/finals_cubit.dart';
import '../../components/core/card_data_item.dart';

class Finals_page extends StatelessWidget {
  const Finals_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FinalsCubit()..getData(),
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
            'Finals',
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
        body: BlocConsumer<FinalsCubit, FinalsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            FinalsCubit myCubit = FinalsCubit.get(context);
            return myCubit.dataModel == null ? Center(child: Center(child: CircularProgressIndicator())) : ListView.builder(
              itemCount: myCubit.dataModel!.data!.length,
              itemBuilder: (context, index) {
                return   cartItem(myCubit.dataModel!.data![index].examSubject.toString());

              },
            );
          },
        ),
      ),
    );
  }
}
