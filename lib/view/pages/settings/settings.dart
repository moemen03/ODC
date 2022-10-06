import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqr/view%20model/bloc/settings/settings_cubit.dart';
import 'package:mqr/view/pages/Terms_Condition.dart';
import 'package:mqr/view/pages/login/login2.dart';
import 'package:mqr/view/pages/support/support.dart';

import '../FAQ/FAQ.dart';

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        BlocProvider(
          create: (context) => SettingsCubit(),
          child: Scaffold(
            appBar: AppBar(
              title: Text("Settings",
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
            body: BlocConsumer<SettingsCubit, SettingsState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                SettingsCubit myCubit = SettingsCubit.get(context);
                return Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  FAQ()),);
                        },
                        child: ListTile(
                          title: Text("FAQ"),
                          trailing: Icon(Icons.arrow_forward_ios),

                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 12,
                        thickness: 0.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  TermsConditions()),);
                        } ,
                        child: ListTile(
                          title: Text("Terms & Conditions"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 12,
                        thickness: 0.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      ListTile(
                        title: Text("Our Parteners"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 12,
                        thickness: 0.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  Support()),);
                        },
                        child: ListTile(
                          title: Text("Support"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 12,
                        thickness: 0.5,
                        indent: 10,
                        endIndent: 10,
                      ),
                      InkWell(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  Loginn()),);
                        },
                        child: ListTile(
                          title: Text("Log out"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),

    );
  }
}