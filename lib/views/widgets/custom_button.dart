import 'package:flutter/material.dart';
import 'package:note_app/note_icon_data.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text('Add', style: TextStyle(color: Colors.black, fontSize: 22)),
    );
  }
}
