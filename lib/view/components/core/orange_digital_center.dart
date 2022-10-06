import 'package:flutter/material.dart';
Widget Orange_logo(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
        child: RichText(
          text: TextSpan(
            text: 'Orange ',
            style: TextStyle(color: Colors.orange,fontSize: 30,),
            children: <TextSpan>[
              TextSpan(text: 'Digital Center', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30,)),

            ],
          ),
        ),
      ),
    ],
  );
}