import 'package:prect/ui/setup/device/device_setup_page.dart';
import 'package:prect/ui/setup/plant/plant_setup_page.dart';
import 'package:prect/ui/setup/surroundings/surroundings_setup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state/setting_page_state.dart';

class SettingPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(settingPageStateProvider);
    final pageNotifier = ref.read(settingPageStateProvider.notifier);

    if (!uiState.processed) {
      pageNotifier.init(ref);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    '設定',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              uiState.processed
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        settingDataComponent(
                          '植物',
                          'パキラ',
                          action: actionButton('変更', () {
                            pageNotifier.processed = false;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlantSetupPage()),
                            );
                          }),
                        ),
                        columSettingDataComponent(
                          'デバイスのデータ',
                          ['WiFi SSID', 'WiFi Password', '送信間隔'],
                          [
                            uiState.deviceSettings!.wifiSSID,
                            uiState.deviceSettings!.wifiPassword,
                            '${uiState.deviceSettings!.sleepTime}分'
                          ],
                          action: actionButton('変更', () {
                            pageNotifier.processed = false;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DeviceSetupPage()),
                            );
                          }),
                        ),
                        settingDataComponent(
                          '場所',
                          '愛知県　弥富市',
                          action: actionButton('変更', () {
                            pageNotifier.processed = false;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SurroundingsSetupPage()),
                            );
                          }),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 32, left: 12),
                          child: Text('お問い合わせ'),
                        ),
                        Card(
                          margin: EdgeInsets.zero,
                          elevation: 0,
                          color: Color.fromRGBO(94, 217, 87, 0.1),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 16, left: 16, right: 16),
                                child: TextFormField(
                                  maxLines: 5,
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    hintText: 'メッセージ',
                                    hintStyle: TextStyle(fontSize: 12),
                                    border: InputBorder.none,
                                  ),
                                  textInputAction: TextInputAction.next,
                                  onChanged: (value) {
                                    //stateNotifier.email = value;
                                  },
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        '送信',
                                        style: TextStyle(
                                          color: Color.fromRGBO(239, 91, 12, 1),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color.fromRGBO(239, 91, 12, 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      height: MediaQuery.of(context).size.height -
                          200, // AppBarとText分だけ引く
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget actionButton(String text, onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Color.fromRGBO(94, 217, 87, 1)),
      ),
    );
  }

  Widget settingDataComponent(String title, String data, {Widget? action}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12, top: 8),
          child: Text(title),
        ),
        Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          color: Color.fromRGBO(94, 217, 87, 0.1),
          child: Padding(
            padding: EdgeInsets.only(top: 2, bottom: 2, left: 16),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  data,
                  style: TextStyle(fontSize: 18),
                ),
                Spacer(),
                action != null
                    ? action
                    : SizedBox(
                        height: 48,
                      ), // TextButtonと高さを合わせるため
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget columSettingDataComponent(
      String title, List<String> subtitles, List<String> data,
      {Widget? action}) {
    List<Widget> columData = [];
    for (int i = 0; i < subtitles.length; i++) {
      columData.add(
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(
                subtitles[i],
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              data[i],
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            (i == 0 && action != null)
                ? action
                : SizedBox(
                    height: 48,
                  ), // TextButtonと高さを合わせるため
          ],
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12, top: 8),
          child: Text(title),
        ),
        Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          color: Color.fromRGBO(94, 217, 87, 0.1),
          child: Padding(
              padding: EdgeInsets.only(top: 2, bottom: 2, left: 16),
              child: Column(
                children: columData,
              )),
        ),
      ],
    );
  }
}
