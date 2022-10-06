import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view model/bloc/counter/counter_cubit.dart';

class counter extends StatelessWidget {
  const counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        body: BlocConsumer<CounterCubit, CounterState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            CounterCubit myCubit = CounterCubit.get(context);
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    myCubit.increment();
                  }, icon:Icon(Icons.add)),
                  SizedBox(
                    width: 25,
                  ),
                  Text(myCubit.count.toString()),
                  SizedBox(
                    width: 25,
                  ),
                  IconButton(onPressed: (){
                    myCubit.decrease();
                  }, icon:Icon(Icons.remove)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
