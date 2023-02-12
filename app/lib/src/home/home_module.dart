import 'package:flutter_modular/flutter_modular.dart';
import 'package:inlist/src/home/home_page.dart';
import 'package:inlist/src/home/todos_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const HomePage()),
    ChildRoute('/todos', child: (context, args) => const TodosPage()),
  ];
}
