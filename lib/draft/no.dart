import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqr/view%20model/bloc/no/no_cubit.dart';


class task2 extends StatelessWidget {
  const task2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoCubit(),
      child: Scaffold(
        body: Center(
          child: BlocConsumer<NoCubit, NoState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),
                  ),
                  SizedBox(height: 40,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.close_sharp)),
                  SizedBox(height: 40,),

                ],
              );
            },
          ),
        ),

      ),
    );
  }
}
