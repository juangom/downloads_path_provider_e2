
import 'dart:async';

import 'package:flutter/services.dart';

class DownloadsPathProviderE2 {
  static const MethodChannel _channel = MethodChannel('downloads_path_provider_e2');

  static Future<String?> get getDownloadsDirectory async {
    final String? version = await _channel.invokeMethod('getDownloadsDirectory');
    return version;
  }
}
