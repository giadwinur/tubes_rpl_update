import 'package:states_rebuilder/scr/state_management/rm.dart';

import 'config_test.dart';

enum Flavor { test, dev, stage, prod }

final config = RM.injectFlavor(
  {
    Flavor.test: () => ConfigTest(),
    Flavor.dev: () => ConfigDev(),
    Flavor.stage: () => ConfigStage(),
    Flavor.prod: () => ConfigProd(),
  },
);
