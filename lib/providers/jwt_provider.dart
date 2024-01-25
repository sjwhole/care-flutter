import 'package:flutter/material.dart';

import '../grpc/services/user_service.dart';
// import 'package:provider/provider.dart';

class JwtProvider extends ChangeNotifier {
  String? _jwt;

  String? get jwt => _jwt;

  late UserService _userService = UserService(_jwt);

  UserService get userService => _userService;

  set jwt(String? newJwt) {
    _jwt = newJwt;
    _userService = UserService(_jwt);
    notifyListeners();
  }

  JwtProvider(this._jwt);

// Additional methods for JWT operations (e.g., fetch, refresh, check validity)
}
