import 'package:prect/data/model/plant.dart';
import 'package:prect/data/model/prect_device_settings.dart';
import 'package:prect/data/model/surroundings.dart';
import 'package:prect/domain/device_setting_info_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// freezedコマンド
/* flutter pub run build_runner build --delete-conflicting-outputs */

part 'setting_page_state.freezed.dart';

@freezed
class SettingPageState with _$SettingPageState {
  const factory SettingPageState({
    PrectDeviceSettings? deviceSettings,
    Plant? plant,
    Surroundings? surroundings,
    @Default(false) bool processed,
  }) = _SettingPageState;
}

final settingPageStateProvider =
    StateNotifierProvider<SettingPageStateNotifier, SettingPageState>((ref) {
  return SettingPageStateNotifier();
});

class SettingPageStateNotifier extends StateNotifier<SettingPageState> {
  SettingPageStateNotifier() : super(SettingPageState());

  Future init(WidgetRef ref) async {
    final settingInfoUseCaseProvider =
        ref.watch(deviceSettingInfoUseCaseProvider);
    final settings = await settingInfoUseCaseProvider.call();
    state = state.copyWith(
      deviceSettings: settings,
      processed: true,
    );
  }

  set processed(bool value) => state = state.copyWith(processed: value);
}
