// GoRouter configuration
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_note/core/router/app_routes.dart';
import 'package:lazy_note/features/archive/presentation/archive_screen.dart';
import 'package:lazy_note/features/based/presentation/based_screen.dart';
import 'package:lazy_note/features/note_list/presentation/note_list_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'shell',
);
final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.note_list_screen,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return BasedScreen(child: child);
      },
      routes: [
        GoRoute(
          path: AppRoutes.note_list_screen,

          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: NoteListScreen(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1, 0), // Slide in from right
                    end: Offset.zero, // Stop at center
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(
                        -1,
                        0,
                      ), // Slide out to left on back navigation
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );
              },
            );
          },
        ),
        GoRoute(
          path: AppRoutes.archive_screen,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: ArchiveScreen(),
              transitionsBuilder: (
                context,
                animation,
                secondaryAnimation,
                child,
              ) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0), // Slide in from right
                    end: Offset.zero, // Stop at center
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(
                        1,
                        0,
                      ), // Slide out to left on back navigation
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);
