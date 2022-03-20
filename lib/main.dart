import 'package:flutter/material.dart';
import 'package:nodasgram/pages/home_page.dart';
import 'package:nodasgram/pages/log_in_page.dart';
import 'package:nodasgram/pages/register_page.dart';
import "package:nodasgram/services/firebase_service.dart";
import "package:firebase_core/firebase_core.dart";
import "package:get_it/get_it.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  GetIt.instance.registerSingleton<FirebaseService>(
    FirebaseService(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nodasgram',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "login",
      routes: {
        "register": (context) => RegisterPage(),
        "login": (context) => LoginPage(),
        "home": (context) => HomePage(),
      },
    );
  }
}
