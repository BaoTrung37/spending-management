import 'package:pending_management/injection/injector.dart';
import 'package:pending_management/presentation/feature/profile/profile_presenter.dart';

class ProfileModule {
  static Future<void> inject() async {
    injector.registerFactory<ProfilePresenter>(
      () => ProfilePresenter(profileService: injector()),
    );
  }
}
