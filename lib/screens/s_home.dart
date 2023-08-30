import 'package:do_it/resources/auth_methods.dart';
import 'package:do_it/widgets/w_custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final FirebaseAuthMethods _authMethods = FirebaseAuthMethods();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onTap: () async {
        await _authMethods.signOut(context);
        Navigator.pushNamed(context, '/login');
      },
              text: "로그아웃",
            ),
          ],
        ),
      ),
    );
  }
}
