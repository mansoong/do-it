import 'package:do_it/custom__icons1_icons.dart';
import 'package:do_it/screens/s_search.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  State<MainAppBar> createState() => _MainAppBarState();


  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // 기본 AppBar 높이
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: SizedBox(
        width: 150,
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height *
                      0.75, // 반응형 사이즈(숫자 조절)
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0), // 적절히 조절
                        topRight: Radius.circular(25.0), // 적절히 조절
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 83,
                        height: 6,
                        decoration:
                        const BoxDecoration(color: Colors.grey),
                      ),
                      const Text("오늘은 은채의 생일입니다!!!!"),
                      const Image(
                          image: AssetImage("assets/images/은채.jpeg")),
                      const Text("은채에게 영상편지를 써주세요.")
                    ],
                  ),
                ));
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(0)),
          child: const Row(
            children: [
              Text(
                "    오늘의 Do It!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.expand_more,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      shape: const Border(bottom: BorderSide(color: Colors.grey)),
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      SearchPage(),
                  transitionDuration: const Duration(seconds: 0)));
        },
        color: Colors.black,
        icon: const Icon(Custom_Icons1.search_line),
      ),

    );
  }
}
