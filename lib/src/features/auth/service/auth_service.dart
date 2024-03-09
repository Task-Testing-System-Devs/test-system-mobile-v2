import 'package:test_system/src/features/auth/models/auth_dto.dart';
import 'package:test_system/src/features/auth/models/auth_info.dart';

abstract class AuthService {
  Future<AuthInfo> auth(AuthDto authDto);
}
