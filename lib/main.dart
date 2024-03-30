import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teitwebsite/website/logoPage.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    MetaSEO().config();
  }
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
        title: "Teit corporation - взгляд в будущее",
        theme: ThemeData(
            colorScheme: ThemeData().colorScheme.copyWith(primary: const Color.fromRGBO(77, 170, 232, 1)),
            fontFamily: 'Inter'
        ),
        debugShowCheckedModeBanner: false, //hide debug banner
        home: const LogoStart()
    ));
  });
}