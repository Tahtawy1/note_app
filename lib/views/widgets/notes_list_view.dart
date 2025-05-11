import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [
    Color(0xffFFCC80),
    Color.fromARGB(255, 128, 244, 255),
    Color.fromARGB(255, 255, 180, 203),
    Color.fromARGB(255, 254, 253, 186),
    Color.fromARGB(255, 206, 163, 228),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(color: data[index % 5],),
        );
      },
    );
  }
}
