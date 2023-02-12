import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inlist/src/home/widgets/inlist_drawer.dart';
import 'package:inlist/src/shared/widgets/user_image_button.dart';

import '../shared/stores/app_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _appStore =
        context.watch<AppStore>((store) => store.segmentedButtonValue);

    return Scaffold(
      drawer: const InlistDrawer(),
      appBar: AppBar(
        title: const Text('INLIST'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('All'),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('Pending'),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text('Completed'),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text('Disabled'),
                  ),
                ],
                selected: _appStore.segmentedButtonValue.value,
                onSelectionChanged: (value) {
                  _appStore.segmentedButtonValue.value = value;
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('New List'),
        onPressed: () {
          Navigator.of(context).pushNamed('./todos');
        },
      ),
    );
  }
}
