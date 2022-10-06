import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqr/view%20model/bloc/login/login_cubit.dart';
import 'package:mqr/view/components/core/orange_digital_center.dart';
import 'package:mqr/view/pages/sign%20up/sign%20up.dart';

import '../../components/core/custom_textform.dart';

class Loginn extends StatelessWidget {
  const Loginn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LoginCubit(),
  child: Scaffold(
      body: SingleChildScrollView(
        child: BlocConsumer<LoginCubit, LoginState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    LoginCubit myCubit = LoginCubit.get(context);
    return SafeArea(
      child: Padding(
            padding: EdgeInsets.all(13.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Orange_logo(),
                  Text(myCubit.message,style: TextStyle(fontSize: 40),),
                  SizedBox(
                    height: 25,
                  ),
                  customTextForm(myCubit.email,"email"),
                  SizedBox(
                    height: 25,
                  ),
                  customTextForm(myCubit.password,"Password"),
                  SizedBox(height: 25,),
                  InkWell(
                    onTap:(){

                    } ,
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: ElevatedButton(onPressed: (){
                            myCubit.login(context);
                          },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange,
                            ),
                          ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Text("  OR  "),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  Signup_page()),);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(color: Colors.deepOrange),

                            ),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.deepOrange,
                              ),)
                            ,)

                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  },
),
      ),
    ),
);
  }
}

