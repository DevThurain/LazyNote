// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

@immutable
abstract class AppRoutes {
  const AppRoutes._();

  static const based_screen = '/based_screen';
  static const note_list_screen = '/note_list_screen';
  static const archive_screen = '/archive_screen';
  static const add_note_screen = '/add_note_screen';
}
