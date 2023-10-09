import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/presentation/screens/login_screen.dart';
import 'package:flutter_application_2/src/presentation/screens/register_screen.dart';
import 'package:flutter_application_2/src/presentation/screens/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/welcome",
      routes: {
        "/welcome":(context) => const Welcomescreen(),
        "/login":(context) => const Loginscreen(),
        "/register":(context) => const Registerscreen(),
      },
    );
  }
}