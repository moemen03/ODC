import 'package:flutter/material.dart';
import 'package:mqr/view/components/core/custom_textform.dart';
import 'package:mqr/view/pages/login/login2.dart';

import '../../components/core/drop list.dart';
List<String>items1=['male','female'];
List<String>items2=['AUC','Cairo','ELU','GUC','Helwan','HTI'];
List<String>items3=['Grade 1','Grade 2', 'Grade 3','Grade 4','Grade 5'];

String selectedItem1='male';
String selectedItem2='AUC';
String selectedItem3='Grade ';

class Signup_page extends StatelessWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return Scaffold(
      body: Form(
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    customTextForm(null, 'Name'),
                    SizedBox(height: 10.0,),
                    customTextForm(null, 'E-mail'),
                    SizedBox(height: 10.0,),
                    customTextForm(null, 'Password'),
                    SizedBox(height: 10.0,),
                    customTextForm(null, 'Password'),
                    SizedBox(height: 10.0,),
                    customTextForm(null, 'Phone Number'),
                    SizedBox(height: 20.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child:DropdownButton(
                            value: _value,
                            items: [
                              DropdownMenuItem(
                                child: Text("male"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("female"),
                                value: 2,
                              ),
                            ],

                             onChanged: (int? value) {
                              value = _value;
                             },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child:DropdownButton(
                            value: _value,
                            items: [
                          DropdownMenuItem(
                                child: Text("AUC"),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text("Cairo"),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text("ELU"),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text("GUC"),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text("Helwan"),
                                value: 5,
                              ),
                              DropdownMenuItem(
                                child: Text("HTI"),
                                value: 6,
                              ),
                            ],

                            hint:Text("AUC"), onChanged: (int? value) {  },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton(
                          value: _value,
                    items: [
                            DropdownMenuItem(
                              child: Text("Grade 1"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("Grade 2"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text("Grade 3"),
                              value: 3,
                            ),
                            DropdownMenuItem(
                              child: Text("Grade 4"),
                              value: 4,
                            ),
                            DropdownMenuItem(
                              child: Text("Grade 5"),
                              value: 5,
                            )
                          ],

                          hint:Text("Grade 1"), onChanged: (int? value) {  },
                        ),
                      ],
                    ),



                    const SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(onPressed: (){
                          },
                            child: Text("Sign Up"),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  Loginn()),);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                side: BorderSide(color: Colors.deepOrange),

                              ),
                              child: Text(
                                "Login",
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
          ),
        ),
      ),
    );
  }
}
