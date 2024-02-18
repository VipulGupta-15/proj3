import 'package:flutter/material.dart';
import 'package:proj3/firebase_options.dart';
import 'package:proj3/home_page.dart';
import 'package:proj3/login_page.dart';
import 'package:proj3/page.dart';

import 'package:proj3/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proj3/view/io.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => const LoginPage(),
        Myroutes.homeRoute: (context) => const HomePage(),
        Myroutes.loginRoute: (context) => const LoginPage(),
        Myroutes.Pagee: (context) => const thP(),
        Myroutes.io: (context) => const IO()
      },
    );
  }
}
