import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/jwt_provider.dart';
import '../utils/jwt.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: () {
        deleteJwtToStorage();
        // Toast logout message
        if (!context.mounted) return;
        final jwtProvider = Provider.of<JwtProvider>(context, listen: false);
        jwtProvider.jwt = null;

        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("로그아웃 되었습니다.")));
      },
      child: Text("로그아웃"),
    ));
  }
}
