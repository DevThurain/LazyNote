import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<ProviderContainer> initialService() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  return container;
}
