import 'dart:async';

import 'package:codonnier_login/core/di/service_locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt locator = GetIt.instance;

/// Run `dart run build_runner build` to generate the locator.config file for
/// the first time after adding this file.
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> setupLocator() async => locator.init();
