import 'package:flutter/material.dart';

class task2 extends StatefulWidget {
  const task2({Key? key}) : super(key: key);

  @override
  State<task2> createState() => _task2State();
}

class _task2State extends State<task2> {
  int count=0;
  List<Widget> momo=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(
            children: momo,
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {count++;
          setState(() {
            if(count%2==0)
              momo.add(Text('flutter'));
            else
              momo.add(Text("dart"));
          }
          );
          },
      ),
    );
  }
}
