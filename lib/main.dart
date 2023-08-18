import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_manager/app/modules/home/views/home_view.dart';
import 'package:task_manager/app/modules/login/views/login_view.dart';
import 'package:task_manager/app/modules/signup/views/signup_view.dart';
import 'package:task_manager/firebase_options.dart';
import 'package:task_manager/repository/authentication_repository/authentication_repository.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: const SignupView(),
    );
  }
}

