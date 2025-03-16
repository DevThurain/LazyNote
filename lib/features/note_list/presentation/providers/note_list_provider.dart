import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/domain/entities/note_entity.dart';

final noteListProvider = StateProvider<List<NoteEntity>>((ref) {
  return List.generate(
    50,
    (index) => NoteEntity(id: index, title: 'Task $index'),
  );
});
