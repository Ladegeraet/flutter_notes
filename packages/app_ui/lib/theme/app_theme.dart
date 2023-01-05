import 'package:app_ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  const factory AppTheme({
    required ColorScheme colorScheme,
    required MaterialColor customColor,
  }) = _AppTheme;

  const AppTheme._();

  ThemeData toThemeData() {
    final isDark = colorScheme.brightness == Brightness.dark;

    final themeData = ThemeData.from(
      colorScheme: colorScheme,
      textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme.copyWith(
            displayLarge: TextStyles.displayLarge,
            displayMedium: TextStyles.displayMedium,
            displaySmall: TextStyles.displaySmall,
            headlineLarge: TextStyles.headlineLarge,
            headlineMedium: TextStyles.headlineMedium,
            headlineSmall: TextStyles.headlineSmall,
            titleLarge: TextStyles.titleLarge,
            titleMedium: TextStyles.titleMedium,
            titleSmall: TextStyles.titleSmall,
            bodyLarge: TextStyles.bodyLarge,
            bodyMedium: TextStyles.bodyMedium,
            bodySmall: TextStyles.bodySmall,
            labelLarge: TextStyles.labelLarge,
            labelMedium: TextStyles.labelMedium,
            labelSmall: TextStyles.labelSmall,
          ),
    );

    return themeData.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
