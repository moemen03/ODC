import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../view model/bloc/add_note/add_note_cubit.dart';
import '../../components/core/card_data_item.dart';

class AddNote_page extends StatelessWidget {
  const AddNote_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
          centerTitle: true,
          title: const Text(
            'Add Note',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            AddNoteCubit myCubit = AddNoteCubit.get(context);
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 30, 0, 30),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      hintText: 'Title',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 30, 0, 30),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      hintText: "Date",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),

                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 60, 0, 90),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )
                      ),
                      hintText: 'Note',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon( // <-- Icon
                      Icons.add,
                      size: 24.0,
                    ),
                    label: Text('Add'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
