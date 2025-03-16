import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:lazy_note/data/persistent/app_database.dart';
import 'package:lazy_note/data/persistent/tables/note_table.dart';
import 'package:lazy_note/domain/entities/note_entity.dart';

class NoteDao {
  final AppDatabase database;
  const NoteDao({required this.database});

  Future<void> addNote(NoteEntity noteEntity) async {
    await database
        .into(database.noteTable)
        .insert(
          NoteTableCompanion.insert(
            title: noteEntity.title,
            note: noteEntity.note,
            createdAt: Value(DateTime.now()),
            isCompleted: Value(noteEntity.isCompleted),
            subNotes: noteEntity.subNotes,
          ),
        );
  }

  Future<List<NoteEntity>> getNoteList({bool isCompleted = false}) async {
    final rawNoteList =
        await (database.select(database.noteTable)
          ..orderBy([(t) => OrderingTerm(expression: t.createdAt)])).get();
    return rawNoteList.map((rawNote) => rawNote.toNoteEntity()).toList();
  }

  Stream<List<NoteEntity>> getReactiveNoteList({bool isCompleted = false}) {
    final reactiveNoteList =
        (database.select(
          database.noteTable,
        )).map((rawNote) => rawNote.toNoteEntity()).watch();
    return reactiveNoteList;
  }

  Future<void> updateCheckStatus(NoteEntity noteEntity, bool value) async {
    final existingNote =
        await (database.select(database.noteTable)..where(
          (dbNote) => dbNote.id.equals(noteEntity.id),
        )).getSingleOrNull();

    if (existingNote == null) {
      debugPrint("No note found with ID: ${noteEntity.id}");
    } else {
      debugPrint("Found with ID: ${existingNote.toJsonString()}");
    }

    await (database.update(database.noteTable)..where(
      (dbNote) => dbNote.id.equals(noteEntity.id),
    )).write(NoteTableCompanion(isCompleted: Value(value)));
  }
}
