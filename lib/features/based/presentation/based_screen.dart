import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lazy_note/core/router/app_routes.dart';
import 'package:lazy_note/features/note_list/presentation/widgets/add_note_widget.dart';
import 'package:lazy_note/features/widgets/auto_annotated_region_widget.dart';
import 'package:lazy_note/features/widgets/glass_bottom_navigation_bar.dart';

class BasedScreen extends HookConsumerWidget {
  const BasedScreen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoAnnotatedRegionWidget(
      brightness: Brightness.light,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: AddNoteWidget(onTap: () {}),
        bottomNavigationBar: GlassBottomNavigationBar(
          onTap: (index) {
            _onItemTapped(index, context);
          },
          selectedIndex: _calculateSelectedIndex(context),
        ),
        body: child,
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith(AppRoutes.note_list_screen)) {
      return 0;
    }
    if (location.startsWith(AppRoutes.archive_screen)) {
      return 1;
    }
    return 0;
  }

  _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).go(AppRoutes.note_list_screen);
      case 1:
        GoRouter.of(context).go(AppRoutes.archive_screen);
      default:
        GoRouter.of(context).go(AppRoutes.note_list_screen);
    }
  }
}
