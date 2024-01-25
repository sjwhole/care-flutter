import 'package:flutter_secure_storage/flutter_secure_storage.dart';

AndroidOptions getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );
final storage = FlutterSecureStorage(aOptions: getAndroidOptions());

void saveJwtToStorage(String jwt) {
  storage.write(key: 'jwt', value: jwt);
}

void deleteJwtToStorage() {
  storage.delete(key: 'jwt');
}

Future<String?> loadJWTFromStorage() async {
  String? value = await storage.read(key: "jwt");
  return value;
}
