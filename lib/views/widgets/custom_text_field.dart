import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved, this.autovalidateMode,
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field required!';
        }
        return null;
      },
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 20, color: kPrimaryColor),
        border: customOutlineBorder(),
        enabledBorder: customOutlineBorder(),
        focusedBorder: customOutlineBorder(kPrimaryColor),
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
