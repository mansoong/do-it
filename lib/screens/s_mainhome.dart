import 'package:do_it/custom__icons1_icons.dart';
import 'package:do_it/screens/s_friends_home.dart';
import 'package:do_it/screens/s_hot_home.dart';
import 'package:do_it/utils/colors.dart';
import 'package:do_it/screens/s_gallery.dart';
import 'package:do_it/screens/s_profile.dart';
import 'package:do_it/widgets/w_mainappbar.dart';
import 'package:do_it/widgets/w_navigatorbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:do_it/screens/s_search.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: FriendsHome(),
    );
  }
}
