// Filename: user_provider.dart
import 'package:flutter/material.dart';

import '../grpc/generated/user.pb.dart';
import '../grpc/services/user_service.dart';
import 'jwt_provider.dart';

class UserProvider extends ChangeNotifier {
  final JwtProvider jwtProvider;

  User _user = User();
  late UserService _userService;

  User get user => _user;

  UserService get userService => _userService;

  UserProvider(this.jwtProvider) {
    jwtProvider.addListener(_handleJwtChange);
    _userService = UserService(jwtProvider);
    _userService.getUser().then((user) {
      _user = user;
      notifyListeners();
    });
  }

  void _handleJwtChange() {
    // React to JWT changes, e.g., fetch user info if JWT is updated
    if (jwtProvider.jwt != null) {
      _userService.getUser().then((user) {
        _user = user;
        notifyListeners();
      });
    }
  }
}
