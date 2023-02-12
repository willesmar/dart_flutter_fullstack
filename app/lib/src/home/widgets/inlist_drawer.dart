import 'package:flutter/material.dart';

class InlistDrawer extends StatelessWidget {
  const InlistDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (index) {
        if (index == 1) {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed('/configs');
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            16,
            28,
            16,
            16,
          ),
          child: Text(
            'Options',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: Row(
            children: [
              const Text('Sync'),
              const SizedBox(width: 28),
              Text(
                '12/02/2023 às 11:38',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Settings'),
        ),
      ],
    );
  }
}
