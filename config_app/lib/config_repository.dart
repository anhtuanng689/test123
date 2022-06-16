import 'dart:async';

import 'package:config_app/splash/model/config.dart';

const _delay = Duration(milliseconds: 1000);

const _config = Config(
  delicous: false,
  good: true,
  cheap: false,
  all: true,
);

class ConfigRepository {
  Future<Config> loadConfigs() {
    print("loading...");
    return Future.delayed(_delay, () => _config);
  }
}
