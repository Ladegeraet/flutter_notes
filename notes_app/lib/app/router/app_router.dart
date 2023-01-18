import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/features/notes/presentation/notes_page.dart';
import 'package:notes_app/features/settings/presentation/settings_page.dart';

@singleton
class AppRouter {
  final GoRouter router;

  AppRouter._(this.router);

  @factoryMethod
  // ignore: prefer_constructors_over_static_methods
  static AppRouter create() {
    return AppRouter._(
      GoRouter(
        routes: [
          GoRoute(
            name: NotesPage.routeName,
            path: '/',
            pageBuilder: (context, state) => const MaterialPage(
              child: NotesPage(title: 'Notes'),
            ),
            routes: [
              GoRoute(
                name: SettingsPage.routeName,
                path: 'settings',
                pageBuilder: (context, state) => const MaterialPage(
                  child: SettingsPage(),
                ),
              ),
            ],
          ),
          // GoRoute(
          //   path: '/notes/:id',
          //   pageBuilder: (context, state) => const NotePage(),
          // ),
        ],
      ),
    );
  }
  // AppRouter() {
  //   _router = GoRouter(
  //     routes: [
  //       GoRoute(
  //         name: NotesPage.routeName,
  //         path: '/',
  //         pageBuilder: (context, state) => const MaterialPage(
  //           child: NotesPage(title: 'Notes'),
  //         ),
  //         routes: [
  //           GoRoute(
  //             name: SettingsPage.routeName,
  //             path: 'settings',
  //             pageBuilder: (context, state) => const MaterialPage(
  //               child: SettingsPage(),
  //             ),
  //           ),
  //         ],
  //       ),
  //       // GoRoute(
  //       //   path: '/notes/:id',
  //       //   pageBuilder: (context, state) => const NotePage(),
  //       // ),
  //     ],
  //   );
  // }
}
