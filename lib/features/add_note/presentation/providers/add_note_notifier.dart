import 'package:fpdart/fpdart.dart';
import 'package:lazy_note/data/persistent/providers/note_dao_provider.dart';
import 'package:lazy_note/domain/entities/note_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_note_notifier.g.dart';

typedef Success = bool;

@riverpod
class AddNoteNotifier extends _$AddNoteNotifier {
  @override
  Future<Option<Success>> build() async {
    return none();
  }

  addNote(String title, String note) async {
    final noteDao = ref.read(noteDaoProvider);
    await noteDao.addNote(NoteEntity(id: 0, title: title, note: note));
    state = AsyncData(Some(true));
  }
}
