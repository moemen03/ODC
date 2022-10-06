import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mqr/view%20model/bloc/start/start_cubit.dart';

import '../components/core/navegation_bottom_bar.dart';

class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StartCubit(),
      child: BlocConsumer<StartCubit, StartState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          StartCubit myCubit = BlocProvider.of(context);
          return Scaffold(
              bottomNavigationBar: GNav(
                backgroundColor: Colors.white,
                color: Colors.black,
                activeColor: Colors.deepOrange,
                duration: Duration(milliseconds: 270),
                tabBackgroundColor: Colors.grey.shade200,
                gap: 15,
                onTabChange: (index) {
                    myCubit.change_cr_index(index);
                },
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(icon: Icons.newspaper,
                    text: 'News',
                  ),
                  GButton(icon: Icons.settings,
                    text: 'settings',
                  ),
                ],
              ),

              body: myCubit.Screens[myCubit.current_index],
          );
        },
      ),
    );
  }
}
