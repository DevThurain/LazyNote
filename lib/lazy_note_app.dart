import 'package:flutter/material.dart';
import 'package:lazy_note/core/themes/app_themes.dart';
import 'package:lazy_note/features/note_list/presentation/note_list_screen.dart';

class LazyNoteApp extends StatelessWidget {
  const LazyNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.light(),
      darkTheme: AppThemes.dark(),
      themeMode: ThemeMode.system,
      home: NoteListScreen(),
    );
  }
}
