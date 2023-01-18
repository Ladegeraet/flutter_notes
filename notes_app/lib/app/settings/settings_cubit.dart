import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> with HydratedMixin {
  SettingsCubit() : super(const SettingsState(themeMode: ThemeMode.system));

  void updateThemeMode(ThemeMode themeMode) {
    emit(SettingsState(themeMode: state.themeMode != ThemeMode.light ? ThemeMode.light : ThemeMode.dark));
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) => SettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();
}
