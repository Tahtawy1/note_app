import 'package:flutter/material.dart';
import 'package:note_app/note_icon_data.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 20, color: primaryColor),
        border: customOutlineBorder(),
        enabledBorder: customOutlineBorder(),
        focusedBorder: customOutlineBorder(primaryColor),
      ),
    );
  }

  OutlineInputBorder customOutlineBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
