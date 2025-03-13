import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:lazy_note/data/persistent/converters/sub_note_list_converter.dart';
import 'package:lazy_note/data/persistent/tables/note_table.dart';
import 'package:lazy_note/domain/entities/sub_note_entity.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [NoteTable])
abstract class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'lazy_note_database',
      native: const DriftNativeOptions(),
    );
  }
}
