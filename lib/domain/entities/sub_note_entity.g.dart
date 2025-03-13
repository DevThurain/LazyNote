// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_note_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubNoteEntity _$SubNoteEntityFromJson(Map<String, dynamic> json) =>
    _SubNoteEntity(
      subNote: json['subNote'] as String? ?? "",
      type:
          $enumDecodeNullable(_$SubNoteTypeEnumMap, json['type']) ??
          SubNoteType.text,
    );

Map<String, dynamic> _$SubNoteEntityToJson(_SubNoteEntity instance) =>
    <String, dynamic>{
      'subNote': instance.subNote,
      'type': _$SubNoteTypeEnumMap[instance.type]!,
    };

const _$SubNoteTypeEnumMap = {
  SubNoteType.text: 'text',
  SubNoteType.link: 'link',
};
