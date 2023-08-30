import 'package:do_it/screens/s_friends_home.dart';
import 'package:do_it/screens/s_gallery.dart';
import 'package:do_it/screens/s_mainhome.dart';
import 'package:do_it/screens/s_mainhome2.dart';
import 'package:do_it/screens/s_profile.dart';
import 'package:flutter/material.dart';
import 'package:do_it/custom__icons1_icons.dart';
import 'package:do_it/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({super.key});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  final CupertinoTabController _controller =
  CupertinoTabController(initialIndex: 0);

  List<Widget> pages = <Widget>[
    const FriendsHome(),
    const GalleryScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _controller,
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => MainHome(),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return GalleryScreen();
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return ProfileScreen();
              },
            );
          default:
            return CupertinoTabView(builder: (context) => MainHome());
        }
      },
      tabBar: CupertinoTabBar(
        onTap: (index) {}, // 하단 내비게이션바의 버튼누르면 해당 버튼의 index에 따라  함수실행 가능
        activeColor: Colors.black,
        backgroundColor: mobileBackgroundColor,
        height: (MediaQuery.of(context).size.height / 13),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Custom_Icons1.icon,
            ),
            label: '',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Custom_Icons1.add_square),
            label: '',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Custom_Icons1.user),
            label: '',
            backgroundColor: primaryColor,
          ),
        ],
      ),
    );
  }
}
