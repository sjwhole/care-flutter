import 'dart:convert';

import 'package:flutter/material.dart';

class JwtProvider extends ChangeNotifier {
  String? _jwt;

  JwtProvider(this._jwt) {
    _validateJwt();
  }

  String? get jwt => _jwt;

  bool get isJwtExpired {
    return _isJwtExpired(_jwt);
  }

  set jwt(String? newJwt) {
    _jwt = newJwt;
    notifyListeners();
  }

  // Decode JWT and get the payload
  Map<String, dynamic>? _decodeJwt(String? token) {
    if (token == null) return null;
    final parts = token.split('.');
    if (parts.length != 3) {
      return null;
    }
    var normalizedBase64 = base64Url.normalize(parts[1]);
    var decoded = utf8.decode(base64Url.decode(normalizedBase64));
    return jsonDecode(decoded);
  }

  // Check if JWT is expired
  bool _isJwtExpired(String? token) {
    final payload = _decodeJwt(token);
    if (payload == null) return true;
    final exp = payload['exp'];
    if (exp == null) return true;
    final currentTime = DateTime.now().toUtc().millisecondsSinceEpoch ~/ 1000;
    return currentTime >= exp;
  }

  void _validateJwt() {
    if (_isJwtExpired(_jwt)) {
      jwt = null; // Set JWT to null if expired
      notifyListeners();
    }
  }
}
