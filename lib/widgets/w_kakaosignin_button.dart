import 'package:do_it/resources/auth_methods.dart';
import 'package:flutter/material.dart';

class KakaoSignInButton extends StatefulWidget {
  const KakaoSignInButton({Key? key}) : super(key: key);

  @override
  State<KakaoSignInButton> createState() => _KakaoSignInButton();
}

class _KakaoSignInButton extends State<KakaoSignInButton> {
  final FirebaseAuthMethods _authMethods = FirebaseAuthMethods();

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        await _authMethods.signInWithGoogle(context);
        Navigator.pushNamed(context, '/home');
      },
      icon: const Image(
        image: AssetImage("assets/images/kakao.png"),
        width: 30,
        height: 30,
      ),
      label: const Text(
        "카카오 계정으로 시작",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      style: TextButton.styleFrom(
        minimumSize: Size((MediaQuery.of(context).size.width / 1.1),
            MediaQuery.of(context).size.height / 16),
        backgroundColor: Colors.yellow,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
    );
  }
}
