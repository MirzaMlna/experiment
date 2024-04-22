import 'package:get_it/get_it.dart';
import 'package:mobile_user/view_model/registration/registration_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final GetIt locator = GetIt.instance;

void setupServiceLocator() {
  // ? registerLazySingleton For Many Data, for example "userFindMany"
  // ? registerFactory For A Data, for example "userFindOne"
  locator.registerLazySingleton(() => RegistrationViewModel());
}

final List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (_) => locator<RegistrationViewModel>(),
  )
];
