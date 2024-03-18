import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/ui/user/state/sign_in_page_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:prect/ui/main/main_page.dart';

import 'account_create_page.dart';

class SingInPage extends ConsumerWidget {
  const SingInPage({super.key});

  void _transitionMainPage(BuildContext context) {
    // 画面遷移 + ログイン画面を廃棄
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return const MainPage();
    }));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(signInPageUiStateProvider);
    final stateNotifier = ref.read(signInPageUiStateProvider.notifier);

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
                      decoration: const InputDecoration(labelText: 'メールアドレス'),
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
                        ),
                      ),
                      obscureText: uiState.obscure,
                      onChanged: (value) {
                        stateNotifier.password = value;
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
                    await stateNotifier.logIn();
                    _transitionMainPage(context);
                  },
                  child: const Text('サインイン'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const AccountCreatePage();
                    }));
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Text('アカウントを作成する'),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
