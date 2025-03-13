import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:lazy_note/domain/entities/sub_note_entity.dart';

class SubNoteEntityListConverter
    extends TypeConverter<List<SubNoteEntity>, String> {
  const SubNoteEntityListConverter();

  @override
  List<SubNoteEntity> fromSql(String fromDb) {
    if (fromDb.isEmpty) {
      return [];
    }
    return (jsonDecode(fromDb) as List)
        .map((e) => SubNoteEntity.fromJson(e))
        .toList();
  }

  @override
  String toSql(List<SubNoteEntity> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}
