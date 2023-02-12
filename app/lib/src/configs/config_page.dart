import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inlist/src/shared/stores/app_store.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _textTheme = _theme.textTheme;
    final _appStore = context.watch<AppStore>((store) => store.themeMode);

    return Scaffold(
      appBar: AppBar(
        title: const Text('INLIST'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Setings', style: _textTheme.titleLarge),
            const SizedBox(height: 24),
            Text('Theme', style: _textTheme.titleMedium),
            const SizedBox(height: 16),
            RadioListTile<ThemeMode>(
              value: ThemeMode.system,
              groupValue: _appStore.themeMode.value,
              title: const Text('System'),
              onChanged: _appStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              groupValue: _appStore.themeMode.value,
              title: const Text('Light'),
              onChanged: _appStore.changeThemeMode,
            ),
            RadioListTile<ThemeMode>(
              value: ThemeMode.dark,
              groupValue: _appStore.themeMode.value,
              title: const Text('Dark'),
              onChanged: _appStore.changeThemeMode,
            ),
            const SizedBox(height: 24),
            Text('Data control', style: _textTheme.titleMedium),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Delete cache and restart the app'),
            ),
          ],
        ),
      ),
    );
  }
}
