import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_body.dart';
import 'widgets/add_note_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: const Color.fromARGB(255, 32, 240, 209),
        child: Icon(Icons.add, color: Colors.black),
        onPressed: () {
          showModalBottomSheet(
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
