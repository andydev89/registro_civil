import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';

class SSTokenStorage extends TokenStorage<OAuth2Token> {
  final storage = const FlutterSecureStorage();
  @override
  Future<void> delete() async {
    await storage.delete(key: 'token');
    log('TOKEN ELIMINADO', name: 'SSTokenStorage');
  }

  @override
  Future<OAuth2Token?> read() async {
    final raw = await storage.read(key: 'token');
    if (raw == null) {
      return null;
    }
    final json = jsonDecode(raw) as Map<String, dynamic>;
    final token = OAuth2Token(
      accessToken: json['accessToken'] as String,
      expiresIn: json['expiresIn'] as int?,
      refreshToken: json['refreshToken'] as String?,
      scope: json['scope'] as String?,
      tokenType: json['tokenType'] as String?,
    );
    log('TOKEN LEIDO', name: 'SSTokenStorage');
    return token;
  }

  @override
  Future<void> write(OAuth2Token token) async {
    final json = {
      'accessToken': token.accessToken,
      'scope': token.scope,
      'refreshToken': token.refreshToken,
      'expiresIn': token.expiresIn,
      'tokenType': token.tokenType,
    };
    final raw = jsonEncode(json);
    await storage.write(key: 'token', value: raw);
    log('TOKEN GUARDADO', name: 'SSTokenStorage');
  }
}
