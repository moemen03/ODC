import 'package:flutter/material.dart';
Widget cartItem(String nn){
  String x=nn;
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        SizedBox(
          height: 22.0,
        ),
        Material(
          elevation: 5.0,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      x,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(
                        Icons.watch_later_outlined
                    ),
                    Text(
                      '2hrs',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 17.0,
                // ),
                Row(
                  children: const [
                    Text("Lecture Day",
                      style: TextStyle(color: Colors.grey,fontSize: 15.0),
                    ),
                    Spacer(),
                    Text("Start Time",
                      style: TextStyle(color: Colors.grey,fontSize: 15.0),
                    ),
                    Spacer(),
                    Text("End Time",
                      style: TextStyle(color: Colors.grey,fontSize: 15.0),
                    ),

                  ],
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: const [
                    Icon(Icons.watch_later_outlined),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text("Wednesday",
                      style: TextStyle(fontSize: 15.0,color: Colors.black),
                    ),
                    Spacer(),

                    Icon(Icons.watch_later_outlined,color: Colors.green,),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text("12:00pm",
                      style: TextStyle(fontSize: 15.0,color: Colors.black),
                    ),
                    Spacer(),

                    Icon(Icons.watch_later_outlined,color: Colors.redAccent,),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text("02:00pm",
                      style: TextStyle(fontSize: 15.0,color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}




