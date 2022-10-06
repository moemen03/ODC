import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Animate extends StatefulWidget {
  const Animate({Key? key}) : super(key: key);

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selected=!selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected?200.0:100.0,
          height: selected?300:100,
          color: selected? Colors.blue:Colors.grey,
          alignment: selected?Alignment.center: AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,

        ),
      ),
    );
  }
}
