import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_note/domain/sub_note_entity.dart';

part 'note_entity.freezed.dart';
part 'note_entity.g.dart';

@Freezed()
abstract class NoteEntity with _$NoteEntity {
  factory NoteEntity({
    required int id,
    @Default("") String title,
    @Default("") String note,
    @Default([]) List<SubNoteEntity> subNotes,
    DateTime? createdAt,
  }) = _NoteEntity;

  factory NoteEntity.fromJson(Map<String, dynamic> json) =>
      _$NoteEntityFromJson(json);
}
