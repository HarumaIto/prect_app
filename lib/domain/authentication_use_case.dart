import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prect/data/repository/mongodb_repository.dart';
import 'package:prect/data/repository/preferences_repository.dart';

final authenticationUseCaseProvider = Provider<AuthenticationUseCase>((ref) {
  final mongodbRepository = ref.watch(mongodbRepositoryProvider);
  final preferencesRepository = ref.watch(preferencesRepositoryProvider);

  return AuthenticationUseCase(
    mongodbRepository: mongodbRepository,
    preferencesRepository: preferencesRepository,
  );
});

class AuthenticationUseCase {
  AuthenticationUseCase({
    required MongodbRepository mongodbRepository,
    required PreferencesRepository preferencesRepository,
  })  : _mongodbRepository = mongodbRepository,
        _preferencesRepository = preferencesRepository;

  final MongodbRepository _mongodbRepository;
  final PreferencesRepository _preferencesRepository;

  // アカウント作成
  Future createAccount(String email, String password) async {
    // メールパスワードでサインイン
    await _mongodbRepository.createUser(email, password);
    // ログイン
    final user = await _mongodbRepository.logIn(email, password);

    // ローカルに保存
    await _preferencesRepository.connect();
    await _preferencesRepository.writeUserRegistration(user.id, email);
  }

  // ログイン
  Future onLogIn(String email, String password) async {
    // メールパスワードでログイン
    final user = await _mongodbRepository.logIn(email, password);

    // ローカルに保存
    await _preferencesRepository.connect();
    print(user.id);
    await _preferencesRepository.writeUserRegistration(user.id, email);
  }

  Future updateFCMToken() async {
    await _preferencesRepository.connect();
    final did = await _preferencesRepository.readDeviceId();

    // FCM用のトークンを取得
    final token = await FirebaseMessaging.instance.getToken();
    print(token);
    await _mongodbRepository.registerUserData(did, token!);
  }
}
