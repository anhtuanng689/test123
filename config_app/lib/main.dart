import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'config_repository.dart';
import 'observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(App(configRepository: ConfigRepository())),
    blocObserver: Observer(),
  );
}
