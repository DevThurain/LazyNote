import 'package:drift/drift.dart';
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
}
