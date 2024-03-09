import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_system/src/features/auth/models/auth_dto.dart';
import 'package:test_system/src/features/auth/service/auth_service.dart';

import '../../../services/storage/secure_storage_service.dart';
import '../../../shared/routing/managers/navigation_manager.dart';

class AuthManager {
  final AuthService _authService;
  final SecureStorageService _storageService;
  final StateController<String?> _tokenController;
  final NavigationManager _navigationManager;

  AuthManager(
    this._authService,
    this._storageService,
    this._tokenController,
    this._navigationManager,
  );

  Future<void> auth(String login, String password) async {
    try {
      final response = await _authService.auth(
        AuthDto(email: login, password: password),
      );
      _storageService.setToken(response.token);
      _tokenController.state = response.token;
      _navigationManager.go('/contests');
    } catch (e) {
      debugPrint('Some error occurred');
    }
  }

  Future<void> authFromStorage() async {
    final token = await _storageService.token;
    if (token == null) return;

    _tokenController.state = token;
  }
}
