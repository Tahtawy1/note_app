import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

// void main() {
//   runApp(const NoteApp());
// }
void main() async {
  await Hive.initFlutter();
  Hive.openBox(knoteBox);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => NoteApp(), // Wrap your app
    ),
  );
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 47, 49, 49),
        fontFamily: 'Poppins',
      ),
      home: NotesView(),
    );
  }
}
