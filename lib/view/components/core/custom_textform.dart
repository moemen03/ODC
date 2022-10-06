import 'package:flutter/material.dart';

Widget customTextForm(var controller, String hint) {
  return TextFormField(
      controller: controller,
      decoration: InputDecoration(
      contentPadding: EdgeInsets.all(15),
       hintText:hint,
        border: OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.circular(15),

        ),
      ),
  );
  }