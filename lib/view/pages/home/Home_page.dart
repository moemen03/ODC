import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mqr/view%20model/bloc/home/home_cubit.dart';
import 'package:mqr/view/pages/Events/Events.dart';
import 'package:mqr/view/pages/Finals/Finals.dart';
import 'package:mqr/view/pages/Lecture/Lectures.dart';
import 'package:mqr/view/pages/Midterms/Midterms.dart';
import 'package:mqr/view/pages/Sections/Sections.dart';
import 'package:mqr/view/pages/add_notes/add_note.dart';
import 'package:mqr/view/pages/login/login2.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../components/core/navegation_bottom_bar.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => HomeCubit(),
  child: Scaffold(
      body :
        BlocConsumer<HomeCubit, HomeState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    HomeCubit myCubit = HomeCubit.get(context);
    return SafeArea(
      child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Orange ',
                    style: TextStyle(color: Colors.orange,fontSize: 30,),
                    children: <TextSpan>[
                      TextSpan(text: 'Digital Center', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30,)),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 10.0,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Lecture_page()),);
                                  // Navigator.pop(context);
                                },
                                child: Container(
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.menu_book_sharp, color: Colors.deepOrange,
                                        size: 60.0,),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        'Lecture',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 25.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15.0,),
                          Expanded(
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 10.0,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Sections_page()),);
                                  // Navigator.pop(context);
                                },
                                child: Container(
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.groups, color: Colors.deepOrange, size: 60.0,),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        'Sections',
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0,),
                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 10.0,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Midterms_page()),);
                                  // Navigator.pop(context);
                                },
                                child: Container(
                                  height: 140,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.event_note_outlined, color: Colors.deepOrange,
                                        size: 60.0,),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        'Midterms',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 25.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15.0,),
                          Expanded(
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 10.0,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Finals_page()),);
                                  // Navigator.pop(context);
                                },
                                child: Container(
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.edit_note_outlined, color: Colors.deepOrange,
                                        size: 60.0,),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        'Finals',
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0,),
                      Row(
                        children: [
                          Expanded(
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 10.0,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Events_page()),);
                                  // Navigator.pop(context);
                                },
                                child: Container(
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.calendar_month_outlined,
                                        color: Colors.deepOrange, size: 60.0,),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        'Events',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 25.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15.0,),
                          Expanded(
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              elevation: 10.0,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddNote_page()),);
                                  // Navigator.pop(context);
                                },
                                child: Container(
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.note_alt_outlined, color: Colors.deepOrange,
                                        size: 60.0,),
                                      SizedBox(height: 5.0,),
                                      Text(
                                        'Notes',
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  },
),
    ),
);
  }
}
