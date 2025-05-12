import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_item.dart';
import 'package:note_app/note_icon_data.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(color: data[index % 5],),
          );
        },
      ),
    );
  }
}
