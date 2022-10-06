import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqr/view%20model/bloc/Events/events_cubit.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../components/core/card_data_item.dart';
import 'package:cell_calendar/cell_calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Events_page extends StatelessWidget {
  const Events_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventsCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.deepOrange)),
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
              onTap: () {},
              child: Icon(
                Icons.filter_alt,
                color: Colors.deepOrange,
                size: 40.0,
              ),
            ),
          ],
        ),
        body: BlocConsumer<EventsCubit, EventsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            EventsCubit myCubit = EventsCubit.get(context);
            return TableCalendar(
              firstDay: DateTime.utc(2010, 10, 20),
              lastDay: DateTime.utc(2040, 10, 20),
              focusedDay: DateTime.now(),
              headerVisible: true,
              daysOfWeekVisible: true,
              sixWeekMonthsEnforced: true,
              shouldFillViewport: false,
              headerStyle: HeaderStyle(
                  titleTextStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
              calendarStyle: CalendarStyle(
                  todayTextStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            );
          },
        ),
      ),
    );
  }
}
