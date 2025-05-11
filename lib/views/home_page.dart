import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesBody());
  }
}