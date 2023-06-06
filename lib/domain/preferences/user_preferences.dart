import 'package:pending_management/domain/entities/user.dart';

abstract class UserPreferences {
  User? getUser();

  Future setUser(User user);

  Future<void> clearAll();
}
