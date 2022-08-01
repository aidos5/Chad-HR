import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const CRED_MAX_CREDENTIAL_BLOB_SIZE = 5 * 512;

class SecureStorage {
  final FlutterSecureStorage flutterSecureStorage;

  const SecureStorage(this.flutterSecureStorage);

  Future<void> write({
    required String key,
    required String? value,
  }) async {
    if (Platform.isWindows &&
        value != null &&
        value.length > CRED_MAX_CREDENTIAL_BLOB_SIZE) {
      final exp = RegExp(r".{1,512}");
      final matches = exp.allMatches(value).toList();
      final chunkedKey = '\$${key}_chunk_size';
      await Future.wait(List.generate(matches.length + 1, (i) {
        return i == 0
            ? flutterSecureStorage.write(
                key: chunkedKey, value: matches.length.toString())
            : flutterSecureStorage.write(
                key: '${key}_$i', value: matches[i - 1].group(0));
      }));
    } else {
      await flutterSecureStorage.write(key: key, value: value);
    }
  }

  Future<String?> read({required String key}) async {
    if (Platform.isWindows) {
      final chunkedKey = '\$${key}_chunk_size';

      final chunkSize =
          int.parse(await flutterSecureStorage.read(key: chunkedKey) ?? '0');

      if (chunkSize > 0) {
        final chunks = await Future.wait(List.generate(chunkSize,
            (i) async => await flutterSecureStorage.read(key: '${key}_$i')));
        return chunks.join();
      } else {
        return await flutterSecureStorage.read(key: key);
      }
    } else {
      return await flutterSecureStorage.read(key: key);
    }
  }
}