import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:network_info_plus/network_info_plus.dart';

import 'package:prect/ui/setup/state/device_setup_page_state.dart';

final ssidUseCaseProvider =
    Provider<SsidUseCase>((ref) => SsidUseCase(ref: ref));

class SsidUseCase {
  SsidUseCase({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  String call() {
    final ssid = _ref.read(deviceSetupPageProvider).wifiSsid;
    if (ssid.isEmpty) {
      _setCurrentWifiSsid();
    }
    return ssid;
  }

  void _setCurrentWifiSsid() async {
    final info = NetworkInfo();

    final wifiName = await info.getWifiName();
    final ssid = wifiName!.substring(1, wifiName.length - 1);

    _ref.read(deviceSetupPageProvider.notifier).wifiSsid = ssid;
  }
}
