import 'package:pending_management/domain/services/profile_service.dart';

class HttpProfileService extends ProfileService {
  HttpProfileService();

  @override
  Future<String?> getProfileName() async {
    // TODO: implement getProfileName
    await Future.delayed(const Duration(milliseconds: 800));
    return "Michael Laudrup";
  }
}
