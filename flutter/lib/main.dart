import 'dart:io';

import 'package:evapp/model/storge/travel_plan_hive.dart';
import 'package:evapp/screen/firebase/firebase_options.dart';
import 'package:evapp/flutter_local_notifications.dart';
import 'package:evapp/routes.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TravelPlanHive.initHive();
  await Firebase.initializeApp(options: Platform.isAndroid ? androidOption : iosOption);
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);
  await initLocalNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FirebaseUILocalizations.delegate,
      ],
      routerConfig: router,
    );
  }
}
