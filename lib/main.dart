import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teitwebsite/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp.router(
      title: 'Teit corporation - взгляд в будущее',
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color.fromRGBO(77, 170, 232, 1),
        ),
        fontFamily: 'Inter',
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    ));
  });
}
