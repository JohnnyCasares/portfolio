import 'package:get_it/get_it.dart';
import 'package:portfolio/services/navigation_services.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
