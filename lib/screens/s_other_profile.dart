import 'package:do_it/custom__icons2_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';

class OtherProfile extends StatefulWidget {
  const OtherProfile({super.key});

  @override
  State<OtherProfile> createState() => _OtherProfileState();
}

class _OtherProfileState extends State<OtherProfile> {

  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      /// 스크롤을 할 때 마다 호출

      /// 스크롤 된 값
      print('offset : ${_controller.offset}');

      /// 스크롤에 대한 여러 정보를 가지고 있습니다.
      /// 전체 길이, offset, 방향 등
      print('position : ${_controller.position}');

      /// 컨트롤러가 SingleChildScrollView에 연결이 됐는지 안돼는지
      _controller.hasClients;
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 328,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/뚱이.webp'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 250,
                left: MediaQuery.of(context).size.width / 2 - (137 / 2),
                child: Container(
                  height: 137,
                  width: 137,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/은채.jpeg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.black,
                        padding: EdgeInsets.all(0),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Angela Yu",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      size: 15,
                      Custom_Icons2.icon__2_,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Edit",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 20, right: 20)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade300),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1500",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text("팔로잉",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))
                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("220k",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Text('팔로워',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))
                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("24",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Text("Do it",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                  SizedBox(height:15 ,),
                  Container(height: (MediaQuery.of(context).size.height-620),
                    color: Colors.yellow,
                    child: Wrap(
                      children: List.generate(
                          11,
                              (index) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.greenAccent,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.import_contacts_sharp),label: ""),BottomNavigationBarItem(icon: Icon(Icons.abc),label: '')],)
    );
  }
}
