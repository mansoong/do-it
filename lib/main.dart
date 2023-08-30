import 'package:do_it/screens/s_edit.dart';
import 'package:do_it/screens/s_friends_home.dart';
import 'package:do_it/screens/s_hot_home.dart';
import 'package:do_it/screens/s_login.dart';
import 'package:do_it/screens/s_mainhome.dart';
import 'package:do_it/screens/s_mainhome2.dart';
import 'package:do_it/screens/s_other_profile.dart';
import 'package:do_it/screens/s_profile.dart';
import 'package:do_it/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Do it?",
      theme: ThemeData(fontFamily: "Pretendard"),
      darkTheme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: mobileBackgroundColor,
    ),

      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const MainHome2(),
      },
      home: const EditScreen(),
    );
  }
}
