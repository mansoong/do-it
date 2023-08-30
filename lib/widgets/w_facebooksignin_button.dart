import 'package:do_it/resources/auth_methods.dart';
import 'package:flutter/material.dart';

class FacebookSignInButton extends StatefulWidget {
  const FacebookSignInButton({Key? key}) : super(key: key);

  @override
  State<FacebookSignInButton> createState() => _FacebookSignInButtonState();
}

class _FacebookSignInButtonState extends State<FacebookSignInButton> {
  final FirebaseAuthMethods _authMethods = FirebaseAuthMethods();

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () async {
        await _authMethods.signInWithFacebook(context);
        Navigator.pushNamed(context, '/home');
      },
      icon: const Image(
        image: AssetImage("assets/images/facebook-logo.png"),
        width: 30,
        height: 30,
      ),
      label: const Text(
        "페이스북으로 시작",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      style: TextButton.styleFrom(
        minimumSize: Size((MediaQuery.of(context).size.width / 1.1),
            MediaQuery.of(context).size.height / 16),
        backgroundColor: const Color(0xff3b5998),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
          ),
        ),
      ),
    );
  }
}
