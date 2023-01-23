import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/app/settings/settings_cubit.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: SettingsPage)
Widget settingsPageUseCase(BuildContext context) {
  return const SettingsPage();
}

class SettingsPage extends StatelessWidget {
  static const routeName = 'SettingsPage';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.read<SettingsCubit>().updateThemeMode(ThemeMode.light);
          },
          child: const Text('ThemeMode'),
        ),
      ),
    );
  }
}
