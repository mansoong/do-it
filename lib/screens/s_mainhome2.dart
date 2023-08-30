import 'package:do_it/custom__icons1_icons.dart';
import 'package:do_it/screens/s_friends_home.dart';
import 'package:do_it/screens/s_hot_home.dart';
import 'package:do_it/utils/colors.dart';
import 'package:do_it/screens/s_gallery.dart';
import 'package:do_it/screens/s_profile.dart';
import 'package:do_it/widgets/w_navigatorbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:do_it/screens/s_search.dart';

class MainHome2 extends StatefulWidget {
  const MainHome2({super.key});

  @override
  State<MainHome2> createState() => _MainHome2State();
}

class _MainHome2State extends State<MainHome2> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigatorBar()
      ),
    );
  }
}
