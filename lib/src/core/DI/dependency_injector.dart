import 'package:get_it/get_it.dart';

import '../../app/features/auth/data/datasources/auth_remote_datasource.dart';
import '../../app/features/auth/data/repositories/auth_repository_impl.dart';
import '../../app/features/auth/domain/repositories/auth_repository_interface.dart';
import '../../app/features/auth/domain/usecases/login_usecase.dart';
import '../../app/features/auth/domain/usecases/sign_up_usecase.dart';
import '../../app/features/auth/presentation/bloc/auth_bloc.dart';
import '../../app/features/auth/presentation/controller/session_controller.dart';
import '../cache/shared_preferences/shared_preferences_impl.dart';
import '../client_http/dio/rest_client_dio_impl.dart';
import '../logger/logger_app_logger_impl.dart';

final injector = GetIt.instance;

void setupDependencyInjector() {
  injector.registerFactory<RestClientDioImpl>(
    () => RestClientDioImpl(
      dio: DioFactory.dio(),
      logger: LoggerAppLoggerImpl(),
    ),
  );

  //SESSION CONTROLLER
  injector.registerFactory<SessionController>(
    () => SessionController(
      sharedPreferences: SharedPreferencesImpl(),
    ),
  );

  // AUTH FEATURE
  injector.registerFactory<AuthRemoteDatasource>(
    () => AuthRemoteDatasource(
      restClientDioImpl: injector<RestClientDioImpl>(),
    ),
  );
  injector.registerFactory<IAuthRepository>(
    () => AuthRepositoryImpl(
      authRemoteDatasource: injector<AuthRemoteDatasource>(),
    ),
  );
  injector.registerLazySingleton(
    () => AuthBloc(
      signUpUsecase: SignUpUsecase(
        authRepository: injector<IAuthRepository>(),
      ),
      loginUsecase: LoginUsecase(
        authRepository: injector<IAuthRepository>(),
      ),
    ),
  );
}
