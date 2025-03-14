import 'package:flutter/material.dart';
import 'package:lazy_note/core/router/app_router.dart';
import 'package:lazy_note/core/themes/app_themes.dart';

class LazyNoteApp extends StatelessWidget {
  const LazyNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.light(),
      darkTheme: AppThemes.dark(),
      themeMode: ThemeMode.system,
      routerConfig: appRouter,
    );
  }
}
