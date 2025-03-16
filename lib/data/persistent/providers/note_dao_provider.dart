import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/data/persistent/daos/note_dao.dart';
import 'package:lazy_note/data/persistent/providers/app_database_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_dao_provider.g.dart';

@riverpod
NoteDao noteDao(Ref ref) {
  final appDatabase = ref.watch(appDatabaseProvider);
  return NoteDao(database: appDatabase);
}
