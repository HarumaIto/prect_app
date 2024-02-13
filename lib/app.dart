import 'package:prect/ui/user/state/sign_in_page_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/repository/preferences_repository.dart';
import 'ui/main/main_page.dart';
import 'ui/user/account_create_page.dart';

final myAppUiStateProvider = FutureProvider.autoDispose<bool>((ref) async {
  final prefRepository = ref.watch(preferencesRepositoryProvider);
  await prefRepository.connect();

  try {
    final isRegistered = await prefRepository.readRegistered();
    // ユーザーがアプリに入るたびにTokenを再登録する <- 開くたびに読んでも、Tokenは毎回更新されるわけではない
    await ref.read(signInPageUiStateProvider.notifier).updateFCMToken();
    return isRegistered;
  } catch (e) {
    await prefRepository.initialization();
    return await prefRepository.readRegistered();
  }
});

class MyApp extends HookConsumerWidget {
  MyApp({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(myAppUiStateProvider);

    //  アプリ全体のUIを実装
    return MaterialApp(
      title: 'Prect',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: uiState.when(
        data: (value) {
          if (value) {
            return MainPage();
          }
          else return AccountCreatePage();
        },
        error: (error, stack) => Center(
          child: Text('エラーが発生しました\napp.dart\n${error.toString()}'),
        ),
        loading: () => SizedBox(),
      ),
    );
  }
}
