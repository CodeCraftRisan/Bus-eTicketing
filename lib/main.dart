import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:get/get.dart';

//import 'package:flutter/scheduler.dart';

import 'core/app_export.dart';

import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';


var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,

  );

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([

    DeviceOrientation.portraitUp,

  ]);


  ///Please update theme as per your need if required.

  ThemeHelper().changeTheme('primary');

  runApp(MyApp());

}


class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Sizer(

      builder: (context, orientation, deviceType) {

        return GetMaterialApp(

          theme: theme,

          title: 'bustics',

          debugShowCheckedModeBanner: false,

          initialRoute: AppRoutes.welcomePageScreen,

          routes: AppRoutes.routes,

        );

      }, // c,]mnt

    );

  }

}

