import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqr/view%20model/bloc/midterms/midterms_cubit.dart';

import '../../components/core/card_data_item.dart';

class Midterms_page extends StatelessWidget {
  const Midterms_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MidtermsCubit(),
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
            'Midterms',
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
        body: BlocConsumer<MidtermsCubit, MidtermsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            MidtermsCubit myCubit = MidtermsCubit.get(context);
            return SingleChildScrollView(
              child: Column(
                children: [
                  cartItem("Flutter"),
                  cartItem("React"),
                  cartItem("Vue"),
                  cartItem("Flutter"),
                  cartItem("React"),
                  cartItem("Vue"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
