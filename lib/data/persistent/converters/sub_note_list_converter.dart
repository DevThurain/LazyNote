import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:lazy_note/domain/sub_note_entity.dart';

class SubNoteEntityListConverter extends TypeConverter<List<SubNoteEntity>, String> {
  const SubNoteEntityListConverter();

  @override
  List<SubNoteEntity> fromSql(String fromDb) {
    if (fromDb.isEmpty) {
      return [];
    }
    return List<SubNoteEntity>.from(jsonDecode(fromDb));  }

  @override
  String toSql(List<SubNoteEntity> value) {
    return jsonEncode(value); 
  }
}