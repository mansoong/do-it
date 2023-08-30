import 'package:do_it/custom__icons2_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:photo_view/photo_view.dart';
import 'package:video_player/video_player.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late VideoPlayerController _videoPlayercontroller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _videoPlayercontroller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
    _initializeVideoPlayerFuture = _videoPlayercontroller.initialize();
    // ..initialize().then((_) {
    // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    // setState(() {});
    _videoPlayercontroller.setVolume(0); // 볼륨을 0으로 설정
    _videoPlayercontroller.play();
    _videoPlayercontroller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayercontroller.dispose();
    super.dispose();
  }

  String name = 'Angela Yu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 328,
                child: AspectRatio(
                  aspectRatio: _videoPlayercontroller.value.aspectRatio,
                  child: VideoPlayer(_videoPlayercontroller),
                ),
              ),
              // Container(
              //   height: 328,
              //   decoration: const BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage('assets/images/뚱이.webp'),
              //           fit: BoxFit.cover)),
              // ),
              Positioned(
                top: 250,
                left: MediaQuery.of(context).size.width / 2 - (137 / 2),
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  onPressed: () {},
                  child: Stack(
                    children: [
                      Container(
                          height: 137,
                          width: 137,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/은채.jpeg"),
                                  fit: BoxFit.cover))),
                      const Positioned(
                          bottom: 0,
                          right: 10,
                          child: Icon(
                            Icons.photo_camera_rounded,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 0),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            width: 0.3,
                            color: Colors.black), // 이 부분에서 경계선의 두께와 색상을 지정합니다.
                      ),
                    ),
                    child: TextButton(
                      style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.only(bottom: 0))),
                      //텍스트 수정은 showdialog 사용
                      child: SizedBox(
                        width: 300,
                        height: 35, // SizedBox의 높이도 설정해주어야 합니다.
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                name,
                                style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerRight,
                              child:
                              const Icon(Icons.edit, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      onPressed : () async {
                        String? result = await showDialog<String>(
                            context: context,
                            builder: (BuildContext context) {
                              return const AlertDialog(
                                content: TextField(
                                  autofocus: false,
                                  decoration:
                                  InputDecoration(labelText: "Angela Yu"),
                                ),
                              );
                            });
                      },
                    ),
                  ),
                  SizedBox(height: 10,
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
                  const SizedBox(
                    height: 20,
                  ),
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
                  const SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 2,
                            crossAxisCount: 3,
                            childAspectRatio: 130 / 142),
                    itemCount: 11,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.greenAccent,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
