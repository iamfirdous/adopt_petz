import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:adopt_petz/utils/constants.dart';
import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';

class ThemeToggler extends StatefulWidget {
  const ThemeToggler({super.key});

  @override
  State<ThemeToggler> createState() => _ThemeTogglerState();
}

class _ThemeTogglerState extends State<ThemeToggler> {
  void onThemeChange(bool isDark) {
    isDark ? AdaptiveTheme.of(context).setDark() : AdaptiveTheme.of(context).setLight();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AdaptiveTheme.getThemeMode(),
      initialData: AdaptiveThemeMode.light,
      builder: (context, snapshot) {
        return Transform.scale(
          scale: 0.4,
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DayNightSwitch(
              dayColor: AppColors.primaryLight,
              nightColor: AppColors.lightForeground,
              value: snapshot.data == AdaptiveThemeMode.dark,
              onChanged: onThemeChange,
            ),
          ),
        );
      },
    );
  }
}
