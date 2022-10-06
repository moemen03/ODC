import 'package:flutter/material.dart';

class Sign_up_page extends StatelessWidget {
  const Sign_up_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
          ),
          Text('Sign Up',style: TextStyle(fontSize: 35),),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                hintText:'Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                hintText:'E-mail',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 25,
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              //suffixIcon: Icon(Icons.remove_red_eye_sharp),
                contentPadding: EdgeInsets.all(15),
                hintText:'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 25,
          ),

          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              //suffixIcon: Icon(Icons.remove_red_eye_sharp),
                contentPadding: EdgeInsets.all(15),
                hintText:'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(height: 25,),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                hintText:'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
          SizedBox(
            height: 25,
          ),
        ],

      ),

    );
  }
}
