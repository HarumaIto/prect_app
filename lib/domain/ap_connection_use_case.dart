import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:prect/ui/setup/state/device_setup_page_state.dart';

final apConnectionUseCaseProvider =
    Provider<ApConnectionUseCase>((ref) => ApConnectionUseCase(ref: ref));

class ApConnectionUseCase {
  ApConnectionUseCase({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  MethodChannel channel = const MethodChannel("com.iruma.prect/native");

  void setMethodCallHandler() {
    channel.setMethodCallHandler(_platformCallHandler);
  }

  Future<dynamic> _platformCallHandler(MethodCall call) async {
    switch (call.method) {
      case 'configureAccessPointResult':
        print('Configure access point result: ${call.arguments}');
        _ref.read(deviceSetupPageProvider.notifier).connectivity =
            call.arguments;
        break;
      default:
        print('Unknowm method ${call.method}');
        throw MissingPluginException();
    }
  }

  void connectAccessPoint() {
    // ネイティブでアクセスポイントに接続させる
    channel.invokeListMethod('ApConnect');
  }

  void disconnectAccessPoint() {
    // ネイティブでAPを切断する
    channel.invokeListMethod('ApDisconnect');
  }
}
