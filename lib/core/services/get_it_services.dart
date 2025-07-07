import 'package:decore_app/Feature/auth/data/repos/auth_repo_imp.dart';
import 'package:decore_app/Feature/auth/domain/repos/auth_repo.dart';
import 'package:decore_app/core/services/database_services.dart';
import 'package:decore_app/core/services/fireStroe_services.dart';
import 'package:get_it/get_it.dart';
import 'firebase_auth_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
    getIt.registerSingleton<DatabaseServices>(FireStoreServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      databaseServices: getIt<DatabaseServices>(),
    ),
  );
}