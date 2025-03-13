import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/core/services/initial_service.dart';
import 'package:lazy_note/lazy_note_app.dart';

void main() async {
  final container = await initialService();

  runApp(UncontrolledProviderScope(container: container, child: LazyNoteApp()));
}
