import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_note/core/constants/app_enums.dart';

part 'sub_note_entity.freezed.dart';
part 'sub_note_entity.g.dart';

@Freezed()
abstract class SubNoteEntity with _$SubNoteEntity {
  factory SubNoteEntity({
    @Default("") String subNote,
    @Default(SubNoteType.text) SubNoteType type,
  }) = _SubNoteEntity;

  factory SubNoteEntity.fromJson(Map<String, dynamic> json) =>
      _$SubNoteEntityFromJson(json);
}
