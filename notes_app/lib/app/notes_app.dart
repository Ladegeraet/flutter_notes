import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/app/router/app_router.dart';
import 'package:notes_app/app/service_locator/service_locator.dart';
import 'package:notes_app/app/settings/settings_cubit.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: const _MaterialApp(),
    );
  }
}

class _MaterialApp extends StatelessWidget {
  const _MaterialApp();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: getIt<AppRouter>().router,
          title: 'Flutter Demo',
          themeMode: state.themeMode,
          darkTheme: AppTheme.dark().toThemeData(),
          theme: AppTheme.light().toThemeData(),
        );
      },
    );
  }
}
