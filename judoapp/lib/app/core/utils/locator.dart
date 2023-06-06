import 'package:judoapp/app/View_Model/View_Model.dart';
import 'package:judoapp/app/core/Singletons/singletons.dart';

import 'package:get_it/get_it.dart';

var locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => AppControlller());
  locator.registerLazySingleton(() => LoginViewModel());
}
