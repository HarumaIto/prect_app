import 'package:prect/data/model/weather.dart';
import 'package:prect/ui/setup/ble/ble_setup_page.dart';
import 'package:prect/ui/setup/setup_page.dart';
import 'package:flutter/material.dart';
import 'package:prect/data/model/prect_device.dart';
import 'package:prect/ui/user/setting_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'state/main_page_ui_state.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(mainPageUiStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prect',
          style: TextStyle(fontSize: 28),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedAlign(
            alignment: const Alignment(0.0, -0.6),
            duration: const Duration(milliseconds: 800),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Image(
                image: AssetImage('assets/images/leaf_water.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          AnimatedAlign(
            alignment: const Alignment(0.0, 1.0),
            duration: const Duration(milliseconds: 800),
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 100, 16, 24),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0x335ED957),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              /*
              uiState.device != null &&
                                  uiState.surroundings?.weather != null
                              ? dataShow(uiState.device!,
                                  uiState.surroundings!.weather)
                              : addDevice(context),
              */
              child: addDevice(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget dataShow(PrectDevice device, Weather weather) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          margin: const EdgeInsets.only(bottom: 4),
          elevation: 0,
          color: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 8),
            width: double.infinity,
            height: 24,
            child: Text(
              device.time,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ),
        Row(children: [
          Flexible(
            child: dataCard(
              label: '水分量',
              data: '${(100 - (device.moisture / 4096 * 100)).round()}%',
              icon: Icons.water_drop_outlined,
            ),
          ),
          Flexible(
            child: dataCard(
              label: 'バッテリー',
              data:
                  '${(((device.battery - 2.4) / 1.8) * 100).toStringAsFixed(1)}%',
              icon: Icons.battery_1_bar,
              isRight: true,
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: dataCard(
              label: '周囲温度',
              data: '${device.temperature.round()}℃',
              icon: Icons.thermostat_rounded,
            ),
          ),
          Flexible(
            child: dataCard(
              label: '周囲湿度',
              data: '${device.humidity.round()}%',
              icon: Icons.cloud_outlined,
              isRight: true,
            ),
          ),
        ]),
        Row(children: [
          Flexible(
            child: dataCard(
              label: '環境温度',
              data: '${weather.temp!}℃',
              icon: Icons.thermostat_rounded,
            ),
          ),
          Flexible(
            child: dataCard(
              label: '環境湿度',
              data: '${weather.humidity!}%',
              icon: Icons.cloud_outlined,
              isRight: true,
            ),
          ),
        ]),
      ],
    );
  }

  Widget addDevice(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BleSetupPage()),
              );
            },
            child: const Text('BLEで追加')),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SetupPage()),
            );
          },
          child: const Text('セットアップ'),
        ),
      ],
    );
  }

  Widget dataCard({
    required String label,
    required String data,
    required IconData icon,
    bool isRight = false,
  }) {
    return Card(
      margin: EdgeInsets.fromLTRB(isRight ? 4 : 0, 4, isRight ? 0 : 4, 4),
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        height: 66,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(icon, size: 44),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'BIZ UDPGothic',
                  ),
                  textAlign: TextAlign.end,
                ),
                Text(
                  data,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'BIZ UDPGothic',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
