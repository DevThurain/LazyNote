import 'package:drift/drift.dart';
import 'package:lazy_note/data/persistent/app_database.dart';
import 'package:lazy_note/data/persistent/converters/sub_note_list_converter.dart';
import 'package:lazy_note/domain/entities/note_entity.dart';

class NoteTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().named('title')();
  TextColumn get note => text().named('note')();
  TextColumn get subNotes =>
      text().named('sub_notes').map(SubNoteEntityListConverter())();
  DateTimeColumn get createdAt => dateTime().named('created_at').nullable()();
}

extension NoteTableDataExtension on NoteTableData {
  NoteEntity toNoteEntity() {
    return NoteEntity(
      id: id,
      title: title,
      note: note,
      subNotes: subNotes,
      createdAt: createdAt,
    );
  }
}
