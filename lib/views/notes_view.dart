import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/views/widgets/notes_body.dart';
import 'widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add, color: Colors.black),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: const Color.fromARGB(255, 47, 49, 49),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
      ),
      body: NotesBody(),
    );
  }
}
