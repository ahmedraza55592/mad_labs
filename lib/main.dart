import 'package:flutter/material.dart';
import 'package:mad_labs/local_notification.dart';
import 'package:mad_labs/screens/home_page.dart';
import 'package:mad_labs/screens/signin_page.dart';
import 'package:mad_labs/screens/singup_page.dart';
import 'package:mad_labs/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'notification_service.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  NotificationService().init();
  tz.initializeTimeZones();
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
      initialRoute: Constants.prefs?.getBool("loggedIn") == true
          ? '/homepage'
          : '/signin',
      routes: {
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/homepage': (context) => const HomePage(),
        '/localnotification': (context) => const LocalNotification(),
      },
    );
  }
}
