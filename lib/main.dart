import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:udcfirebase/features/user_auth/pages/home_page.dart';
import 'package:udcfirebase/features/user_auth/pages/register_page.dart';

import 'features/app/splash_screen/splashscreen.dart';
import 'features/user_auth/pages/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCpInbk0pNUK1ZJqp6QPVO3EmlTshrsiOc",
        appId: "1:869629131205:android:2a8c1d36a4438b8ea0b3ac",
        messagingSenderId: "869629131205",
        projectId: "loginfire-67a47",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authenticat
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}