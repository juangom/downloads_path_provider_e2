import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:downloads_path_provider_e2/downloads_path_provider_e2.dart';

void main() {
  const MethodChannel channel = MethodChannel('downloads_path_provider_e2');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DownloadsPathProviderE2.getDownloadsDirectory, '42');
  });
}
