import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/data/persistent/providers/note_dao_provider.dart';
import 'package:lazy_note/domain/entities/note_entity.dart';

final noteListProvider = StateProvider<List<NoteEntity>>((ref) {
  return List.generate(
    50,
    (index) => NoteEntity(id: index, title: 'Task $index'),
  );
});

final reactiveNoteListProvider = StreamProvider<List<NoteEntity>>((ref) {
  final noteDao = ref.watch(noteDaoProvider);
  return noteDao.getReactiveNoteList();
});
