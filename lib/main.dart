import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prect/util/permission_util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'firebase_options.dart';

import 'package:stack_trace/stack_trace.dart' as stack_trace;

void main() async {
  // main関数でasync/awaitを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();

  // 権限
  PermissionUtil.locationRequest();
  PermissionUtil.notificationRequest();

  // Firebaseの初期化
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // RiverPodの範囲を設定
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );

  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}