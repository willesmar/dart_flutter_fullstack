import 'package:flutter/material.dart';

class UserImageButton extends StatelessWidget {
  const UserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _colorScheme = _theme.colorScheme;

    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: _colorScheme.primary,
        foregroundColor: _colorScheme.onPrimary,
        child: const Text('W'),
      ),
    );
  }
}
