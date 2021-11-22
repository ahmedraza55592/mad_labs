import 'package:flutter/material.dart';
import 'package:mad_labs/screens/home_page.dart';
import 'package:mad_labs/screens/signin_page.dart';
import 'package:mad_labs/screens/singup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/signin',
      routes: {
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}

