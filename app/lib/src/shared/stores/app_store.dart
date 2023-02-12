import 'package:flutter/material.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);
  final segmentedButtonValue = ValueNotifier({0});

  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  void save() {
    // TODO(Will): save to local db
  }
}
