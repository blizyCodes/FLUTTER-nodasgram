import 'package:flutter/material.dart';
import 'package:nodasgram/pages/log_in_page.dart';
import 'package:nodasgram/pages/register_page.dart';

void main() {
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
      },
    );
  }
}
