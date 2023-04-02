import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_e_commerce/model/utils/themes.dart';
import 'package:new_e_commerce/view/counter.dart';

import 'controller/auth/login.dart';
import 'controller/auth/newLogin.dart';
import 'controller/bindings/bindings.dart';
import 'firebase_options.dart';
import 'view/Home/Home_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  // Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      theme: themes(),
      home: LoginScreeen(),
    );
  }
}
