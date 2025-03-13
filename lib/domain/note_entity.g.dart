// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteEntity _$NoteEntityFromJson(Map<String, dynamic> json) => _NoteEntity(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String? ?? "",
  note: json['note'] as String? ?? "",
  subNotes:
      (json['subNotes'] as List<dynamic>?)
          ?.map((e) => SubNoteEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$NoteEntityToJson(_NoteEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'subNotes': instance.subNotes,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
