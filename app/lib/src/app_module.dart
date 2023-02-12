import 'package:flutter_modular/flutter_modular.dart';
import 'package:inlist/src/configs/config_page.dart';
import 'package:inlist/src/home/home_module.dart';
import 'package:inlist/src/shared/stores/app_store.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => AppStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute('/configs', child: (context, args) => const ConfigPage()),
      ];
}
