import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:notes_app/app/service_locator/service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => init(getIt);