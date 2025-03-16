
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/data/persistent/app_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase (Ref ref) {
  return AppDatabase();
}