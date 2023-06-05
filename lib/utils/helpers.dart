import 'package:adopt_petz/utils/constants.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  TextTheme get appTextTheme => textTheme.copyWith(
    headlineLarge: textTheme.headlineLarge?.copyWith(fontFamily: Fonts.poppins, fontSize: 32.0, fontWeight: FontWeight.bold),
    headlineMedium: textTheme.headlineMedium?.copyWith(fontFamily: Fonts.poppins, fontSize: 24.0, fontWeight: FontWeight.bold),
    titleMedium: textTheme.titleMedium?.copyWith(fontFamily: Fonts.poppins, fontSize: 20.0, fontWeight: FontWeight.bold),
    titleSmall: textTheme.titleSmall?.copyWith(fontFamily: Fonts.poppins, fontSize: 14.0, fontWeight: FontWeight.bold),
    displayMedium: textTheme.titleMedium?.copyWith(fontFamily: Fonts.poppins, fontSize: 20.0),
    bodyLarge: textTheme.bodyLarge?.copyWith(fontFamily: Fonts.poppins, fontSize: 16.0),
    bodyMedium: textTheme.bodyMedium?.copyWith(fontFamily: Fonts.poppins, fontSize: 12.0),
  );

  // TextStyles
  TextStyle? get headlineLarge => textTheme.headlineLarge?.copyWith(color: colorText);
  TextStyle? get headlineMedium => textTheme.headlineMedium?.copyWith(color: colorText);
  TextStyle? get titleMedium => textTheme.titleMedium?.copyWith(color: colorText);
  TextStyle? get titleSmall => textTheme.titleSmall?.copyWith(color: colorText);
  TextStyle? get displayMedium => textTheme.displayMedium?.copyWith(color: colorText);
  TextStyle? get button1 => textTheme.displayMedium?.copyWith(color: AppColors.darkForeground);
  TextStyle? get button2 => textTheme.displayMedium?.copyWith(color: colorPrimary);
  TextStyle? get bodyLarge => textTheme.bodyLarge?.copyWith(color: colorText);
  TextStyle? get bodyMedium => textTheme.bodyMedium?.copyWith(color: colorText);

  // Colors
  Color get colorPrimary => theme.primaryColor;
  Color get colorCard => theme.cardColor;
  Color get colorHint => theme.hintColor;
  Color get colorBG => theme.scaffoldBackgroundColor;
  Color get colorText => theme.secondaryHeaderColor;
  Color get colorDisabled => theme.disabledColor;
  Color get colorSelected => theme.highlightColor;

  // Theme
  ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    cardColor: AppColors.darkForeground,
    hintColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.lightBackground,
    secondaryHeaderColor: AppColors.lightForeground,
    disabledColor: AppColors.primaryDark,
    highlightColor: AppColors.primary,
    fontFamily: Fonts.poppins,
    textTheme: appTextTheme,
    inputDecorationTheme: theme.inputDecorationTheme.copyWith(filled: true, fillColor: AppColors.darkForeground),
    useMaterial3: true,
  );

  ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    cardColor: AppColors.lightForeground,
    hintColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    secondaryHeaderColor: AppColors.darkForeground,
    disabledColor: AppColors.primaryDark,
    highlightColor: AppColors.primaryLight,
    fontFamily: Fonts.poppins,
    textTheme: appTextTheme,
    inputDecorationTheme: theme.inputDecorationTheme.copyWith(filled: true, fillColor: AppColors.lightForeground),
    useMaterial3: true,
  );
}