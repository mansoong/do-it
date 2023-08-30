import 'package:do_it/widgets/w_facebooksignin_button.dart';
import 'package:do_it/widgets/w_googlesignin_button.dart';
import 'package:do_it/widgets/w_kakaosignin_button.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("assets/images/rocket.png")),
          Text("Do it?",
              style: TextStyle(
                  fontSize: 100,
                  fontFamily: "Gaegu",
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
          SizedBox(
            height: 90,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                KakaoSignInButton(),
                SizedBox(height: 15),
                FacebookSignInButton(),
                SizedBox(height: 15),
                GoogleSignInButton(),
              ],
            ),
          ),
        ],
     ),
    );
  }
}
