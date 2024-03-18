import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/main/main_page.dart';
import 'package:prect/ui/user/state/account_create_page_ui_state.dart';

import 'sign_in_page.dart';

class AccountCreatePage extends ConsumerWidget {
  const AccountCreatePage({super.key});

  void _transitionMainPage(BuildContext context) {
    // 画面遷移 + ログイン画面を廃棄
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return const MainPage();
    }));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(accountCreatePageUiStateProvider);
    final stateNotifier = ref.read(accountCreatePageUiStateProvider.notifier);

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ようこそ！',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 16,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'メールアドレス',
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      stateNotifier.email = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'パスワード',
                        suffix: IconButton(
                          onPressed: () {
                            stateNotifier.obscure = !uiState.obscure;
                          },
                          icon: Icon(uiState.obscure
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined),
                        )),
                    obscureText: uiState.obscure,
                    onChanged: (value) {
                      stateNotifier.password = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'パスワード確認',
                        suffix: IconButton(
                          onPressed: () {
                            stateNotifier.confirmationObscure =
                                !uiState.confirmationObscure;
                          },
                          icon: Icon(uiState.confirmationObscure
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined),
                        )),
                    obscureText: uiState.confirmationObscure,
                    onChanged: (value) {
                      stateNotifier.confirmationPassword = value;
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (uiState.password == uiState.confirmationPassword) {
                    await stateNotifier.createAccount();
                    _transitionMainPage(context);
                  }
                },
                child: const Text('アカウント作成'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return SingInPage();
                  }));
                },
                child: const Row(
                  children: [
                    Spacer(),
                    Text('サインインはこちら'),
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
