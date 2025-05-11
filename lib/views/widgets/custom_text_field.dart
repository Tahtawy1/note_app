import 'package:flutter/material.dart';
import 'package:note_app/note_icon_data.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          fontSize: 20,
          color: primaryColor,
        ),
        border: customOutlineBorder(),
        enabledBorder: customOutlineBorder(),
        focusedBorder: customOutlineBorder(primaryColor),
        contentPadding: EdgeInsets.fromLTRB(10, 26, 10, 26),
      ),
    );
  }

  OutlineInputBorder customOutlineBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white
        )
      );
  }
}