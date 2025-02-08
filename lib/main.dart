import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:due_kasir/routes/router.dart';
import 'package:due_kasir/service/get_it.dart';
import 'package:due_kasir/utils/env.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:signals/signals_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final isDeviceConnected = signal(false);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: Environment.url,
    anonKey: Environment.anonKey,
  );
  setup();
  runApp(const MyApp());
}

final _router = GoRouter(routes: $appRoutes);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription<List<ConnectivityResult>> subscription;
  @override
  void initState() {
    super.initState();

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) async {
      isDeviceConnected.value = false;
      log("Internet status ====== $isDeviceConnected");
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ShadApp.materialRouter(
      debugShowCheckedModeBanner: false,
      title: 'Hakim',
      routerConfig: _router,
    );
  }
}
