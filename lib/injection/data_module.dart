import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:pending_management/data/interceptor/auth_interceptor.dart';
import 'package:pending_management/data/preferences/auth_preferences.dart';
import 'package:pending_management/data/preferences/user_shared_preferences.dart';
import 'package:pending_management/data/services/http_client/dio_http_client.dart';
import 'package:pending_management/data/services/http_client/http_client.dart';
import 'package:pending_management/data/services/http_profile_service.dart';
import 'package:pending_management/domain/api/api_config.dart';
import 'package:pending_management/domain/preferences/user_preferences.dart';
import 'package:pending_management/domain/services/profile_service.dart';
import 'package:pending_management/injection/injector.dart';

class DataModule {
  static Future<void> inject() async {
    // Prefs
    injector.registerLazySingleton<AuthPreferences>(
      () => AuthPreferences(injector()),
    );
    injector.registerLazySingleton<UserPreferences>(
      () => UserSharedPreferences(injector()),
    );

    // Http
    injector.registerFactory<DioHttpClient>(() {
      return DioHttpClient(Dio());
    });

    injector.registerFactory<HttpClient>(() {
      return DioHttpClient(Dio());
    });

    injector.registerLazySingleton<Dio>(() {
      final Dio dio = Dio();
      dio.httpClientAdapter = DefaultHttpClientAdapter();
      dio.options.baseUrl = injector.get<ApiConfig>().apiUrl;
      dio.interceptors.add(
        AuthInterceptor(
          httpClient: injector(),
          authPreferences: injector(),
          userPreferences: injector(),
          refreshTokenHttpClient: injector(),
          onTokenExpired: () {
            // Handle log out
          },
        ),
      );

      return dio;
    });

    // Services
    injector.registerLazySingleton<ProfileService>(
      () => HttpProfileService(),
    );
  }
}
